#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <winsock2.h>

#define WINSOCK_VERSION 0x202
#define BUFFER_SIZE 256

BOOL init() {
    WSADATA wsaData;
    return ((WSAStartup(WINSOCK_VERSION, &wsaData)) == 0);
}

int get_default_socket() {
    return (socket(AF_INET, SOCK_STREAM, 0));
}

void init_server(struct sockaddr_in *server, struct hostent *host_info, unsigned short port) {
	memset(server, 0, sizeof(*server));
	memcpy(&(server->sin_addr), host_info->h_addr, host_info->h_length);
	server->sin_family = host_info->h_addrtype;
	server->sin_port = htons(port);
}

int cleanup(SOCKET *socket) {
	closesocket(*socket);
	WSACleanup();
	return(-1);
}

int main(int argc, char *argv[]) {
    struct sockaddr_in server;
	struct hostent *host_info;
	unsigned long address;
	SOCKET client_socket;
    unsigned short port;
    char *server_name, buffer[256];
    int retval, index;
    
    // get command line arguments
    if ((argc - 1) != 2) {
        printf("usage: client <server> <port>\n");
        return(0);
    }
    server_name = argv[1];
    port = atoi(argv[2]);

    // initialize winsock (load ws2_32.dll)
    if (!init()) {
        printf("error starting winsock\n");
        return(-1);
    }
    
	if (isalpha(server_name[0])) {  // server address is a name
		host_info = gethostbyname(server_name);
	} else  { // Convert nnn.nnn.nnn.nnn address to a usable one
		address = inet_addr(server_name);
		host_info = gethostbyaddr((const char*)&address, sizeof(address), AF_INET);
	}
	
	// check if we could resolve given server address
	if (host_info == NULL ) {
		printf("Client: Cannot resolve address [%s]: Error %d\n",
		       server_name,
		       WSAGetLastError());
		WSACleanup();
		exit(1);
	}
	
	// copy host & port info into server structure
	init_server(&server, host_info, port);
    client_socket = get_default_socket(); // open a socket
    
    if (client_socket == INVALID_SOCKET) { // fail to open socket
        printf("Failed to open socket. Error %d\n", WSAGetLastError());
		return(cleanup(&client_socket));
    }
    
	printf("Client connecting to: %s:%d\n", host_info->h_name, port);
	if (connect(client_socket, (struct sockaddr*)&server, sizeof(server))
	    == SOCKET_ERROR) {
		printf("connect() failed: %d\n",WSAGetLastError());
		return(cleanup(&client_socket));
	}
    
    // get string from user to send to server
    while (TRUE) {

		// zero out buffer
		for (index = 0; index < BUFFER_SIZE; index++) {
			buffer[index] = 0;
		}

		printf("send ('q' to quit): ");
        scanf("%s", buffer); // read input from user
        if (!_stricmp("q", buffer)) {
            break;
        }

        retval = send(client_socket, buffer, strlen(buffer) + 1, 0);
		if (retval == SOCKET_ERROR) {
			printf("send() failed: error %d\n", WSAGetLastError());
			return(cleanup(&client_socket));
		}

		retval = recv(client_socket, buffer, sizeof(buffer), 0);
		if (retval == 0) {
			printf("Server closed connection\n");
			return(cleanup(&client_socket));
		} else {
		    printf("\nreceived: %s\n", buffer);
		}

    }
	closesocket(client_socket);
	WSACleanup();
	return(0);
}

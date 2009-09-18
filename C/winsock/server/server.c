#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
//#include <winsock2.h>

#define WINSOCK_VERSION 0x202
#define BUFFER_SIZE 512

BOOL init() {
    WSADATA wsaData;
    return ((WSAStartup(WINSOCK_VERSION, &wsaData)) == 0);
}

int get_default_socket() {
    return (socket(AF_INET, SOCK_STREAM, 0));
}

void init_server(struct sockaddr_in *server, unsigned short port) {
	memset(server, 0, sizeof(*server));
	server->sin_family = AF_INET;
	server->sin_addr.s_addr = INADDR_ANY;
	server->sin_port = htons(port);
}

int cleanup(SOCKET *socket) {
	closesocket(*socket);
	WSACleanup();
	return(-1);
}

struct request_info {
	SOCKET socket;
	struct sockaddr_in client_info;
};

DWORD WINAPI service_request(LPVOID obj) {
	struct request_info *request;
	SOCKET service_request_socket;
	struct sockaddr_in client_info;
	char buffer[BUFFER_SIZE];
	int retval, index;

	request = (struct request_info*)obj;
	service_request_socket = request->socket;
	client_info = request->client_info;

	// service client requests util process is killed
	while (service_request_socket != INVALID_SOCKET) {

		// zero out buffer
		for (index = 0; index < BUFFER_SIZE; index++) {
			buffer[index] = 0;
		}
				
		// receive the data (bytes) from the client
		retval = recv(service_request_socket, buffer, sizeof(buffer), 0);
		if (retval == SOCKET_ERROR) {
			if (WSAGetLastError() == WSAECONNRESET) {
				printf("client(%s) has disconnected\n", inet_ntoa(client_info.sin_addr));
			} else {
				printf("Failed to recv() on socket. Error %d\n", WSAGetLastError());
			}
			break;
		}

		printf("request(%s): %s\n", inet_ntoa(client_info.sin_addr), buffer);
		printf("response: %s\n", buffer);
		// echo the data (bytes) back to client
		if (send(service_request_socket, buffer, sizeof(buffer), 0)
			== SOCKET_ERROR) {
			printf("Failed to send() on socket. Error %d\n", WSAGetLastError());
			break;
		}
	}
	closesocket(service_request_socket);
    return NO_ERROR;
}

int main(int argc, char *argv[]) {
    unsigned short port;
    struct sockaddr_in server_info;
    struct sockaddr_in client_info;
	struct request_info request;

    SOCKET listen_socket, service_request_socket;
	int address_length, retval, index;
    char buffer[BUFFER_SIZE];
	DWORD dwThreadId;
    HANDLE hThreads[SOMAXCONN];
	
    // get command line arguments
    if ((argc - 1) != 1) {
        printf("usage: server <port>\n");
        return(0);
    }
    port = atoi(argv[1]);

    // initialize winsock (load ws2_32.dll)
    if (!init()) {
        printf("error starting winsock\n");
        return(-1);
    }
	
	init_server(&server_info, port); // populate server info in strcuture
	listen_socket = get_default_socket(); // open a socket

    if (listen_socket == INVALID_SOCKET) { // fail to open socket
        printf("Failed to open socket. Error %d\n", WSAGetLastError());
		return(cleanup(&listen_socket));
    }
    
	// attach this process to the server socket
	if (bind(listen_socket, (struct sockaddr*)&server_info,
			sizeof(server_info)) == SOCKET_ERROR) {
		printf("Failed to bind() socket. Error %d\n", WSAGetLastError());
		return(cleanup(&listen_socket));
	}

	// put the socket in a state listening for an incoming connection
	if (listen(listen_socket, SOMAXCONN) == SOCKET_ERROR) {
		printf("Failed to listen() on socket. Error %d\n", WSAGetLastError());
		return(cleanup(&listen_socket));
	}

	printf("Echo Service Running on Port %d\n", port);
	address_length = sizeof(client_info);

	while (TRUE) {

		// block until a we get (accept) a request from a client
		service_request_socket = accept(listen_socket,
			(struct sockaddr_in*)&client_info, &address_length);
		
		if (service_request_socket == INVALID_SOCKET) {
			printf("Failed to accept() on listen socket. Error %d\n",
				WSAGetLastError());
			return(cleanup(&listen_socket));
		}

		request.socket = service_request_socket;
		request.client_info = client_info;

        CreateThread(NULL,
                     0,
                     service_request,
                     (LPVOID)&request,
                     0,
                     &dwThreadId);
	}
	closesocket(listen_socket);
	WSACleanup();
	return(0);
}
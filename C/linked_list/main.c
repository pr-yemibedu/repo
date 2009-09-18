#include <stdio.h>
#include <memory.h>

struct node_t {
    void *data;
    struct node_t *next;
};

void create_node(struct node_t *n, void *data) {
    n = (struct node_t*)malloc(sizeof(struct node_t));
    n->data = data;
    n->next = NULL;
}

int main(int argc, char **args) {
    int i = 8;
    struct node_t *n;
    create_node(n, &i);
    printf("%d\n", *((int*)(n->data)));
    free(n);
}
#include <stdio.h>
#include <stdlib.h>
#include <memory.h>

typedef struct node_t {
    void *item;
    struct node_t *left;
    struct node_t *right;
} Node, *NodePtr;

void create_node(NodePtr n, void *c) {
    n = (NodePtr)malloc(sizeof(Node));
    n -> item = c;
    n -> left = NULL;
    n -> right = NULL;
}

int main(int argc, char **args) {
    NodePtr n;
    int *i = (int*)malloc(sizeof(int));
    *i = 9;
    create_node(n, i); 
    printf("%d\n", n->item);
    return 0;
} 
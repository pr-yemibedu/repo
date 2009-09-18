#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <sched.h>
#include <math.h>

#define SIZE 1000

void *worker_routine(void *arg) {
    int counter = *((int*)arg), i;
    for (i = 0; i < counter; i++) {
        if ((i%2) == 0) {
            sched_yield();
        }
        if (asin(counter*counter));
        //printf("%d,", i);
    }
}

int main(int argc, char **argv) {
    pthread_t tid[SIZE];
    int counter = atoi(argv[1]), ret, i;
    for (i = 0; i < SIZE; i++) {
        ret = pthread_create(&tid[i], NULL, worker_routine, (void*)&counter);
    }
    printf("after thread");
    //sleep(10);
    for (i = 0; i < SIZE; i++) {
        pthread_join(tid[i], NULL);
    }
}

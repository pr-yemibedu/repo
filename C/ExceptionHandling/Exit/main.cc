#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

static void atexit_handler_1(void)
   {
   printf("within 'atexit_handler_1'\n");
   }

static void atexit_handler_2(void)
   {
   printf("within 'atexit_handler_2'\n");
   }

int main(void)
   {
   atexit(atexit_handler_1);
   atexit(atexit_handler_2);
   assert(1 == 2);
   exit(EXIT_SUCCESS);
   printf("this line should never appear\n");
   return 0;
   }

#include <stdio.h>

#define size 10

int main(void) {
  int foo[size];
  for (int i=0; i<=size; i++)
    foo[i]=0;

  for (int i=1; i<=size; i++)
    foo[i]=foo[i-1]+1;
  
  printf ("foo[%d]=%d", size-1, foo[size-1]);
}

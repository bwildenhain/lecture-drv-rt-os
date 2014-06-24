#include <stdio.h>

#define size 10

int main() {
  int foo[size];
  for (int i=0; i<=size; i++)
    foo[i]=foo[i-1]+1;
  
  printf ("foo[%d]=%d", size, foo[size]);
}

//Solução usando a estrutura de controlo while
/* fmmb 2010-02-09 */
 
#include <stdio.h>
 
int main () {
  int num, i;
  printf("Número : ");
  scanf("%d", &num);
 
  i = 1;
  while ( i <= 10 ) {
    printf("%d x %2d = %d\n", num, i, ( i * num ) );
    i++;
  }
 
}

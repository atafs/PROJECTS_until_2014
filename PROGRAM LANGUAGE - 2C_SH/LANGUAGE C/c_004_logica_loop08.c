/* Imprime a Tabuada de um número

Pretende-se fazer um programa que mostre a tabuada de um número. */
/* fmmb 2010-02-09 */
 
#include <stdio.h>
 
int main () {
  int num, i;
  printf("Número : ");
  scanf("%d", &num);
 
  for(i=1;i<=10;i++) {
    printf("%d x %2d = %d\n", num, i, ( i * num ) );
  }
 
}

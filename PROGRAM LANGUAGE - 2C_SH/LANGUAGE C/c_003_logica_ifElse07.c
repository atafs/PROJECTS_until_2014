/* Determinar o menor de n numeros

Determinar o menor de n numeros. Comece por estudar o caso de n=3
Pretende-se um programa que pede 3 números ao utilizador e indica o menor deles */
/* fmmb 2010-02-09 */
 
#include <stdio.h>
int main () {
  int num1, num2, num3;
 
  printf("introduza 3 números: ");
  scanf("%d %d %d", &num1, &num2, &num3);
 
  if ( ( num1 < num2 ) && ( num1 < num3 ) ) {
    printf("o menor é %d\n", num1);
  } else if ( ( num2 < num1 ) && ( num2 < num3 ) ) {
    printf("o menor é %d\n", num2);
  } else {
    printf("o menor é %d\n", num3);
  }
 
}

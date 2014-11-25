//Outra solução ...
/* fmmb 2010-02-09 */
 
#include <stdio.h>
int main () {
  int num1, num2, num3;
 
  printf("introduza 3 números: ");
  scanf("%d %d %d", &num1, &num2, &num3);
 
  if ( num1 <= num2 ) {
    if ( num1 <= num3 )
      printf("o menor é %d\n", num1);
    else
      printf("o menor é %d\n", num3);
  } else {
    if ( num2 <= num3 )
      printf("o menor é %d\n", num2);
    else
      printf("o menor é %d\n", num3);
  }
 
}

/*Adivinhar um número

Pretende-se um programa que, dado um número previamente estabelecido, vai perguntando ao utilizador números até adivinhar o número original */
/* fmmb 2010-02-09 */
 
#include <stdio.h>
const segredo = 7;
int main () {
  int num;
 
  do {
    printf("Número : ");
    scanf("%d", &num);
  } while ( num != segredo );
 
  printf("Conseguiu!\n");
}

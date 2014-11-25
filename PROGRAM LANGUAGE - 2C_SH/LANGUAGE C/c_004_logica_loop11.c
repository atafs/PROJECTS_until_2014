/* Arrays

Contar o número de vezes que cada número foi introduzido

Pretende-se um programa que depois de pedir números de 1 a 9, mostre o número de vezes que cada um deles foi introduzido. */
/* fmmb 2010-02-09 */
 
#include <stdio.h>
 
int main () {
  int contagens[9];
  int num, i;
 
  for(i = 1; i <= 9; i++) contagens[i-1] = 0;
 
  do {
    printf("Indique número (0 para parar) : ");
    scanf("%d", &num);
    if ( ( num >= 1 ) && ( num <= 9 ) ) contagens[num-1]++;
  } while ( num != 0 );
 
  for(i = 1; i <= 9; i++) {
    printf("O número %d ocorreu %d vezes\n", i, contagens[i-1]);
  }
}

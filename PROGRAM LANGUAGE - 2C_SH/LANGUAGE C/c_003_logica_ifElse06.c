/* Modifique o programa anterior para que seja o utilizador a introduzir o número a adivinhar, indicando no fim tentativas foram usadas. */
/* fmmb 2010-02-09 */
 
#include <stdio.h>
 
int main () {
  int segredo, num, tentativas = 0;
  printf("Segredo: ");
  scanf("%d", &segredo);
 
  do {
    printf("Número : ");
    scanf("%d", &num);
    tentativas++;
    if (num > segredo ) {
      printf("Muito alto!\n");
    } else if ( num < segredo ) {
      printf("Muito baixo!\n");
    } else {
      printf("Conseguiu!\n");
    }
  } while ( num != segredo );
 
  printf("Tentativas usadas: %d\n", tentativas);
}

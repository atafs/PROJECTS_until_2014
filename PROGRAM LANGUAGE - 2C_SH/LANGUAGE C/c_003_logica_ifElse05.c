/* Suponha agora que se pretende indicar se a tentativa do utilizador é demasiado alta, baixa ou se acertou. */
/* fmmb 2010-02-09 */
 
#include <stdio.h>
const segredo = 7;
 
int main () {
  int num;
 
  do {
    printf("Número : ");
    scanf("%d", &num);
    if (num > segredo ) {
      printf("Muito alto!\n");
    } else if ( num < segredo ) {
      printf("Muito baixo!\n");
    } else {
      printf("Conseguiu!\n");
    }
  } while ( num != segredo );
 
}

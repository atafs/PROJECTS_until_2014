/* Pretende-se agora generalizar o programa anterior de forma a permitir determinar o menor de n números. */
/* fmmb 2010-02-09 */
 
#include <stdio.h>
 
const n = 5;
int main () {
  int num, menor;
  int contador = 1;
 
  while ( contador != n ) {
    printf("Número :");
    scanf("%d", &num);
    if (( contador == 1 ) || ( num < menor )) menor = num;
    ++contador;
  }
 
  printf("O menor é o %d\n", menor);
 
}

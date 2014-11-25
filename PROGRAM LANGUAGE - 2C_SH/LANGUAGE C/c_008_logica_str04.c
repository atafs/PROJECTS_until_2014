/* Processamento de strings

Conta o número de letras numa linha de texto

Pretende-se um programa que leia uma linha de texto, a guarde num buffer e mostre o seu tamanho */
#include <stdio.h>
 
main( ) {
  int n, c;
  char line[100];
  n = 0;
  while( (c=getchar( )) != '\n' ) {
    if( n < 100 )
      line[n] = c;
    n++;
  }
  printf("Número de letras = %d\n", n);
}


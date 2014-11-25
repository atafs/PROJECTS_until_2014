/* Modifique o programa anterior para imprimir o buffer usando o printf. Note que a sequência de caracteres deve terminar sempre com o código 0. */
#include <stdio.h>
 
main( ) {
  int n, c, i;
  char line[100];
  n = 0;
  while( (c=getchar( )) != '\n' ) {
    if( n < 99 )
      line[n] = c;
    n++;
  }
  printf("Número de letras = %d\n", n);
 
  line[n] = 0;
  printf("Linha introduzida: %s\n", line);
 
}

//Outra versão minimalista do mesmo programa.
#include <stdio.h>
main( ) {
  int n;
  char line[100];
  n = 0;
 
  while ( (n<100) && ( (line[n++]=getchar( )) != '\n' ) );
 
  line[n-1] = '\0'; /* Substitui \n pelo código 0 */
 
  printf("Letras: %d, Linha introduzida: %s\n", n-1, line);
}

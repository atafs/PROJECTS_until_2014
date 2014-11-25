//Modifique o programa anterior para imprimir o buffer.
#include <stdio.h>
 
main( ) {
  int n, c, i;
  char line[100];
  n = 0;
  while( (c=getchar( )) != '\n' ) {
    if( n < 100 )
      line[n] = c;
    n++;
  }
  printf("Número de letras = %d\n", n);
 
  printf("Linha introduzida: ");
  for(i= 0;i<n;i++)
    printf("%c", line[i]);
  printf("\n");
}

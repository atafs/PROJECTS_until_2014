#include <stdio.h>

main () {

	int a, b;
	printf ("Escreva dois números: ");
	scanf ("%d", &a);
	scanf ("%d", &b);

	if (a > b) printf ("\nO maior é %d\n\n", a);
	else printf ("\nO maior é %d\n\n", b);

} 

/* PARA COMPILAR NA SHELL:

  gcc nome.c -o nome
  /.nome

*/

#include <stdio.h>

main() {
	
	int n = 1, soma = 0;

	do {
		printf ("Diga um número: ");
		scanf ("%d", &n);
		soma += n;
	
	} while ( n != 0);
		
	printf ("\nA Soma é: %d\n\n", soma);
		
}

#include <stdio.h>

main() {
	
	int n = 1, soma = 0;

	while ( n != 0) {
		printf ("Diga um número: ");
		scanf ("%d", &n);
		soma += n;
	}
		
	printf ("\nA Soma é: %d\n\n", soma);
		
}

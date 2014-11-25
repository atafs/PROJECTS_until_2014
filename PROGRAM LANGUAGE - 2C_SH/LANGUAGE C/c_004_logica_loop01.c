#include <stdio.h>

main() {
	
	int i, n, maior = 0;

	for ( i = 0; i < 10; i++ ) {
		printf ("Diga um Número: ");
		scanf ("%d", &n);
		if ( n > maior) maior = n;
			
	}	
	printf ("\nO maior é: %d\n\n", maior);
		
}

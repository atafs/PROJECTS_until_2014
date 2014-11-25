
#include <stdio.h>

main () {
	
	//variaveis locais
	int a[10];
	
	int i , x;
	for (i=0; i<10; i++) {
		printf ("Diga %dº numeros (total de 10): ", i+1 );
		scanf ("%d ", &x);
		a[i] = x;
	}

	for (i=9; i>=0; i-- )
		printf ("% d", a[i] );
		printf ("\n");
		
		int m = maior (a, 10);
		printf ("O maior e %d \n ", m );
		// printf ("O maior e %d \n", maior(a, 10);
	}


int maior (int a[] , int n) {

	int i , m ;
	m = a [0];
	
	for (i=1; i < n ; i++) {
		if (a[i] > m) 
			m = a [i];
	}
	// printf (" O maior e % d \ n " , m );
	return m ;
}

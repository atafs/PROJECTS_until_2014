#include <stdio.h>

int main() {
	
	//boolean
	int aparece = 0;
	
	int i, n;
	for ( i=0; i < 10; i++ ) {
		printf ("Diga um Total de 10 Números: ");
		scanf ("%d", &n);
		
		//change from false to true
		if ( n == 7 )
			aparece = 1;  
	}

	//print result
	if (aparece) printf ("\nO 7 apareceu!!!\n\n");
	else printf ("\nO 7 não apareceu...\n\n");		
}

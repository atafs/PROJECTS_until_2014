#include <stdio.h>

int main() {
	//variables
	int i , n, maior = 0;

	//loop	
	i = 0;
	printf ("PROGRAMA: Qual o maior numero entre 10 elemento?\n");
	while ( i < 10 ) {
		printf ("Diga um Número: ");
		scanf ("%d", &n);
		if ( n > maior) maior = n;
		i++;
	
	}	

	//result	
	printf ("\nO maior é: %d\n", maior);
}

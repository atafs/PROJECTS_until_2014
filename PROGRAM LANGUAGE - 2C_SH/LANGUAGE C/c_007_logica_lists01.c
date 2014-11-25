#include <stdio.h>

int main() {

	//interact with user
	int number;
	printf ("\nDiga um Número Inteiro: ");
	scanf ("%d", &number);

	//interact with user
	int i, a[number];
	printf ("Escreva %d números: ", number);
	for ( i=0; i<number; i++ ) 
		scanf ("%d", &a[i] );
	
	//print calling the function	
	printf ("\nA soma dos numeros: %d\n\n", somaa ( a, number ) ); 
}

int somaa ( int a[], int number ) {
	int soma = 0;
	for ( number--; number >= 0; number-- )
		soma += a[number];
	
	return soma; 
}

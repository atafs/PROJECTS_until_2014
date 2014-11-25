#include <stdio.h>

int main() {
	
	//attributes
	int a, b;

	//interact with user
	printf ("Diga dois Números: ");
	scanf ("%d%d", &a, &b );

	//print
	if ( a == b)
		printf ("\nSão Iguais");

	//swap
	if ( b > a ) {	
		int t = b;
		a = b;
		b = t;
		
	}

	//result
	printf ("\nO maior é: %d\n\n", a);
		
}

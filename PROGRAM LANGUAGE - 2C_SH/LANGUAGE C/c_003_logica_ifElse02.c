#include <stdio.h>

int main() {
	
	int a, b;

	printf ("Diga dois Números: ");
	scanf ("%d%d", &a, &b );
	
	if ( a > b)
		printf ("\nO maior é: %d\n\n", a);

	else if ( b > a)
		printf ("\nO maior é: %d\n\n", b);

	else
		printf ("\nSão Iguais\n\n");
}

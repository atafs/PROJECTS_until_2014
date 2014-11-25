#include <stdio.h>

main() {
	
	//attributes
	int a, b, m;

	//interact with user
	printf ("Diga dois Números : ");
	scanf ("%d%d", &a, &b);
	
	//comparason	
	m = a;
	if (b > a)
		m = b;
	
	//result
	printf ("\nO maior é: %d\n\n", m);
}

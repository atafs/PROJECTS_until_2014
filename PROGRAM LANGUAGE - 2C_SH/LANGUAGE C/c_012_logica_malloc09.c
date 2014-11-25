#include <stdio.h>
#include <stdlib.h>
#include <string.h>


main() {
	int i;
	int *p = malloc( sizeof(int) );
	p = &i;
	*p = 10;

	printf ("\nO apontador %d é igual ao %d\n\n", i, *p ); 
}


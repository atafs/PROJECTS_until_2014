#include <stdio.h>
#include <stdlib.h>

int main() {
	
	int a, *p=NULL;
	p = malloc ( 3 * sizeof(int) );
	
	//define values
	*p = 10;
	*(p+1) = 11;
	*(p+2) = *p + 2;
	
	//print result
	printf ("\n[Imprimir 3 apontadores int] - %d %d %d\n\n", *p, *(p+1), *(p+2) );
}


#include <stdio.h>
#include <stdlib.h>

main() {
	int i, *p=NULL;
	p = malloc ( 10* sizeof(int) );	
	for ( i=0; i<10; i++) {
		*(p+i) = 10+i;
	}

	int *p1 = p + 9;
	for ( ; p1 >= p; p1-- ){
		printf ("%d\n", *p1 );
	}
}


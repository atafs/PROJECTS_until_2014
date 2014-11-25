#include <stdio.h>
#include <stdlib.h>

	main() {
	int i, *p=NULL;
	p = calloc ( sizeof(int), 10 );
	for ( i=0; i<10;i++) {
		p[i] = i + 10;
	}

	int *p1 = p + 9;
	for ( ; p1 >= p; p1-- )
		printf ("%d\n", *p1 ); 
}


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

main() {
	int x = 3, y = 2;
	trocar ( &x, &y);
	printf ("%d %d\n", x, y );
}


void trocar ( int *pa, int *pb ) {
	int x = *pa;
	*pa = *pb;
	*pb = x;
}
	

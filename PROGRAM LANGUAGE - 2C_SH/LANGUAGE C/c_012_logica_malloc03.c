#include <stdio.h>
#include <stdlib.h>

	main() {
	int a, *p;
	p = calloc ( sizeof (int), 10 );
	*p = 10;
	*(p+1) = 11;
	*(p+2) = *p + 2;
	printf ("%d %d %d\n", *p, *(p+1), *(p+2) );
}


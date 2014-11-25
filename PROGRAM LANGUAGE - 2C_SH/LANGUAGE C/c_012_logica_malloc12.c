#include <stdio.h>
#include <stdlib.h>
#include <string.h>


main() {

	int a[10];
	init ( a, 10, 20);
	
	printf ("As posições da Array a[i] são:\n");
	int i;
	for ( i = 0; i < 10; i++ ) 
		printf ("%d ", a[i]);
		printf ("\n");
	
}


void init ( int *p, int n, int v) {
	int i;
	for ( i=0; i<n; i++ ) {
		p[i] = v;
	}
}


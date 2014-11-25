#include <stdio.h>
#include <stdlib.h>

main() {
	int a[10] = { 10, 11, 12, 13, 14, 15, 16, 17, 18, 19};
	int i;
	for ( i=0; i<10;i++) {
		printf ("%d\n", *(a+i) );
	}
}


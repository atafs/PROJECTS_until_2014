#include <stdio.h>
#include <stdlib.h>
#include <string.h>


main() {
	
	int x = 3;
	f ( &x );
	printf ("%d\n", x );
}
	
int f ( int *p ) {
	*p = 4;	
}




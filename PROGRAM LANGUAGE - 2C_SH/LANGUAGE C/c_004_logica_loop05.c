#include <stdio.h>


main() {

	int i;
	int dezenas = 10;

	for ( i=1; i <= 100; i++ ) {
		printf ("%d ", i);
		if ( i == dezenas ) {
			printf ("\n");
			dezenas += 10;
		}
	}
}

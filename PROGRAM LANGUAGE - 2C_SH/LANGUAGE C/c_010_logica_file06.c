#include <stdio.h>
#include <stdlib.h>

main() {

	FILE *f;
	f = fopen ("c_010_logica_file06.txt", "r");
	if ( f == NULL) {   // caso a abertura do ficheiro corra mal... 
		perror ("file");
		exit ( 1 );
	}	
	
	int n, i = 0;
	printf ("\nNúmeros:\n");	
	while ( fscanf ( f, "%d", &n ) != EOF ) {
		printf ( "%d: %d\n", ++i, n );
	}
	printf ("\n");
	fclose (f);	
}

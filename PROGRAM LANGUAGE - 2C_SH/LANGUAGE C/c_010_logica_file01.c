#include <stdio.h>

main() {

	FILE *f;
	f = fopen ("c_010_logica_file01.txt", "w");
	
	//caso a abertura do ficheiro corra mal... 
	if ( f == NULL ) {   
		printf ("não correu bem...\n");
		exit(1);
	}	

	int i, n;
	for ( i=0; i<4; i++) {
		printf ("Diga um número: ");
		scanf ( "%d", &n );
		fprintf ( f, "%d \n", n );
	}

	fclose (f);	
}

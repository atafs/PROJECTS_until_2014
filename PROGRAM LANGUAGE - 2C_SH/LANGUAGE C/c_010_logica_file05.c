#include <stdio.h>
#include <stdlib.h>

main() {

	FILE *f;
	f = fopen ("c_010_logica_file05.txt", "r");
	
	// caso a abertura do ficheiro corra mal... 
	if ( f == NULL) {   
		perror ("file");
		exit (1);
	}		
	
	char s[80];
	int i = 0;
	while ( fgets ( s, 80, f ) != NULL ) {
		printf ( "%d: %s\n", ++i, s );
	}
	printf ("\n");
	fclose (f);	
}

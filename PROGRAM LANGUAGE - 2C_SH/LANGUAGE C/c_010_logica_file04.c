#include <stdio.h>
#include <stdlib.h>

main() {

	FILE *f;
	f = fopen ("c_010_logica_file04.txt", "r");
	
	//caso a abertura do ficheiro corra mal... 
	if ( f == NULL) {   
		perror ("file");
		exit (1);
	}	
	
	int i, n;
	printf ("\n[Números]\n");	
	for ( i=0; i<10; i++ ) {
		
		//scan from file
		fscanf (f, "%d", &n );
		printf ( "%d: %d\n", i+1, n );
	}
	printf ("\n");
	fclose (f);	
}

#include <stdio.h>

main() {

	FILE *f;
	f = fopen ("c_010_logica_file03.txt", "w");
	if ( f == NULL) {   // caso a abertura do ficheiro corra mal... 
		printf ("não correu bem...\n");
		exit ( 1 );
	}	
	fprintf ( f, "Hello World of SO and so on...\n");
	fclose (f);	
}

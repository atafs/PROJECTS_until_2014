#include <stdio.h>

main() {

	FILE *f;
	char linha[80], i = 1;
	
	f = fopen ("c_010_logica_file02.txt", "w");
	if ( f == NULL) {   // caso a abertura do ficheiro corra mal... 
		printf ("não correu bem...\n");
		exit ( 1 );
	}	
	
	while ( 1 ) {
		printf ("%d: ", i++);
		fgets ( linha, 80, stdin );
		if ( ! strcmp ( linha, "exit\n") ) break;
		fprintf ( f, "%s", linha );
	} 
	fclose (f);	
}

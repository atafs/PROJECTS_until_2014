//Ler uma string, contar os J’s e transformar as minusculas em maiusculas

#include <stdio.h>
#include <string.h>


void maiusculas ();

main () {

	printf ( "Linha: " );
	char s[80];
	fgets ( s, 80, stdin );
	
	int i , contar = 0;
	for ( i=0; i<strlen(s) ; i++ ) {
		if ( s[i] == 'J' || s[i] == 'j') 
			contar++;
	}

	printf ( "Existem %d \n ", contar );
	maiusculas (s);
	printf ( "Final: %s \n ", s );
}

void maiusculas ( char s[] ) {

	int i ;
	for ( i=0; i < strlen (s); i++ ) {
		if ( s[i] >= 'a' && s[i] <= 'z' )
			s[i] = s[i] - 'a' + 'A';
	}
}



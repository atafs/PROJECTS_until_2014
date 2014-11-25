//IV - Arrays de caracteres “strings”


#include <stdio.h>
#include <string.h>

main () {

	char s [40];
	int i ;

	for ( i =0; i <40; i++) {
		s[i] = 'A' + i ;
	}

	for ( i=0; i <40; i++ ) {
		printf ( "%c" , s[i] );
		printf ( "\n" );
	}

	// vamos por um terminador nisto!
	s[7] = '\0';

	printf ( "O conteudo do array e %s \n", s );

	// experimentar funcoes

	// ler do teclado
	printf ( "Diga: " );
	fgets ( s , 40 , stdin );
	printf ( "Disse %s \n" , s );

	char c, p[40];
	int n;
	printf ( "Diga outras coisas: " );
	scanf ( "%c", &c );
	scanf ( "%d", &n );
	scanf ( "%s", p );
	fgets ( s , 80 , stdin );

	printf ( " c = <%c>, n = <%d>, p = <%s>, s = <%s> \n ", c, n, p, s );

	// experimentar as funcoes de manipulaca o de strings

	printf ( " Diga ainda outras coisas: " );
	fgets ( s , 80 , stdin );
	s [ strlen (s) - 1 ] = 0; // limpar o enter

	int tamanho = strlen (s);
	strcpy ( p , s );
	strcat ( p , "+" );
	strcat ( p , s );

	int r = strcmp ( s , "Jac" );
	printf ( " tamanho = %d, p = <%s>, r = %d \n ", tamanho, p, r );

}






// Ler duas strings e junta-las separadas por um espaco. Se a string resultante for “um dois”, deve indicar a mensagem “Ok”. 

#include <stdio.h>
#include <string.h>

main () {
	
	char s1 [80] , s2 [80] , s3 [80];

	printf ( "Palavra1: " );
	scanf ( "%s", s1 );

	printf ( "Palavra2 : " );
	scanf ( "%s", s2 );

	strcpy ( s3, s1 );
	strcat ( s3, " " );
	strcat ( s3, s2 );

	printf ( "String final : %s \n " , s3 );
	if ( strcmp ( s3, "um dois" ) == 0 )
		printf ( "Ok \n" );
}

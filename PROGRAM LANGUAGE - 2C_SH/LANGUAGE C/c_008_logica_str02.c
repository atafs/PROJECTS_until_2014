#include <stdio.h>
#include <string.h>

main() {

	char a[] = "Hello";
	char b[] = "World";
	char c[] = "Worx";	

        //strcom: compare two strings (0=true; else=false)
	int n = strcmp ( a, "Hello" );	
	printf ("\n%d\n", n );

	n = strcmp ( a, b );
	printf ("\n%d\n", n );
	
	n = strcmp ( c, b );
	printf ("\n%d\n", n );
}


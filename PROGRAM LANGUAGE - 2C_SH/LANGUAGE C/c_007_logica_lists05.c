#include <stdio.h>

main() {

	int max = 20;
	char string[] = "Hello SO";
	char blankString[max];		
	
	//call function and prints
	foo_strcpy ( blankString, string );
	printf ("\n%s\n", blankString );
	printf ("\n%s\n\n", string);
}

int foo_strcpy (char blankString[], char string[] ) {
	int i;
	for ( i=0; string[i]; i++ )
		blankString[i] = string[i];
	
	//apagar o '/0' (terminador)
	blankString[i] = 0;  
}

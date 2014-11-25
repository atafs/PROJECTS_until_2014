#include <stdio.h>

main() {

	char string[] = "Hello SO: using %c";
	int i;
	
        //print char by char in screen
        printf ("\n[");	
        for ( i=0; string[i] != '\0'; i++ ) 
		printf ("%c", string[i] );
        printf ("]\n\n"); 

}


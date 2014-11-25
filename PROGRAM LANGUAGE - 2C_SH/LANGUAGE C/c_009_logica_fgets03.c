#include <stdio.h>
#include <string.h>

main() {

	char s[100], c;
	int i = 0;

	// encontrar e apagar o \n que ficou na string...
	printf ("Nome: ");	
	while ( ( c = fgetc (stdin) ) != '\n' && i < 100 )  s[i++] = c;
	s[i] = 0;

	// imprimir o nº carateres (strlen(s) )
	int sl = strlen(s);
	printf ("\nO meu Nome tem %d caracteres", sl );  
	if (strcmp (s , "João") != 0) 
		printf (" e não é João");

	printf (".\n\n");
	

}

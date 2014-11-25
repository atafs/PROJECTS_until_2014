#include <stdio.h>
#include <stdlib.h>

main() {
	
	//define variable
	int a, *p;
	
	//allocate space 
	p = malloc ( sizeof(int) );
	
	//define values
	a = 10;
	(*p) = 10;
	
	//print result
	printf ("\n[Imprimir dois inteiros] - int:%d apontadorInt:%d;\n\n", a, (*p));
}


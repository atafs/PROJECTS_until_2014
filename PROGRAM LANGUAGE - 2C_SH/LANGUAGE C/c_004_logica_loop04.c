#include <stdio.h>

main() {
	
	int i = 0;
	while ( i < 10000 ) {
		if ( i == 5) break; 		
		printf ("\ni: %d\n", i);
		i++;
		
	}
	printf ("\nO Valor de i é: %d\n\n", i);
		
}

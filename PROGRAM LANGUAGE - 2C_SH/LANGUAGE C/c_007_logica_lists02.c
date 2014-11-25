#include <stdio.h>

main() {

    //interact1 with user
    int number;
    printf ("\nDiga um Número Inteiro: ");
    scanf ("%d", &number);
        
    //interact2 with user
    int i, a[number];
    printf ("Escreva %d números: ", number);
    for ( i=0; i<number; i++ ) 
	scanf ("%d", &a[i] );
		
   //paragraph before and after the cicle (last from first)
    printf ("\n[");	
    for ( i--; i>=0; i--)
	printf (" %d ", a[i] );  
    printf ("]\n\n"); 
}
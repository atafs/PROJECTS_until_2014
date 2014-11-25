#include <stdio.h>

main() {
	
	int numero;	
	printf ("Inserir um número: ");
	scanf ("%d", &numero);	

	//numeros negativos
	if(numero < 0) numero = -1;

	switch(numero) {
	
	case -1: printf ("Negativos\n");break;
	case  0: printf ("Nenhum\n"); 	break;
	case  1: printf ("Um\n"); 	break;
	case  2: printf ("Dois\n"); 	break;
	case  3: printf ("Tres\n");	break;
	case  4: printf ("Quatro\n"); 	break;
	case  5: printf ("Vários\n"); 	break;
	default: printf ("Muitos\n"); 	break; 
	}
	
	
}

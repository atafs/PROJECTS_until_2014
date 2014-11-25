// Escreve dois numeros e coloca-os por ordem crescente

#include <stdio.h>

main() {

	int a,b;
	printf("Escreva dois numero: ");
	scanf("%d", &a);
	scanf("%d", &b);

	if(a>b) printf ("\nPor ordem crescente: %d, %d.\n\n", b, a);
	else printf ("\nPor ordem crescente: %d, %d.\n\n", a, b);
}

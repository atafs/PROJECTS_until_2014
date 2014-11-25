// Ler 10 numeros e escreve-los por ordem inversa

#include <stdio.h>

main() {

	int array [10];
	int i, x;

	for(i=0; i<10; i++) {
		printf ("Diga o %d numero: ", i+1);
		scanf ("%d", &x);
		array[i] = x;
	}

	printf("Os numeros inseridos sao:\n ");
	for(i=9; i>=0; i--) {
		printf("%d ", array[i]);
		printf("\n");
	}



}

// Alterar o anterior para tambem dizer qual o maior

#include <stdio.h>

//variaveis globais
int a[10];

int main() {

	int i, x;
	for(i=0; i<10; i++){
		printf ("Diga o %d numero: ", i+1);
		scanf ("%d", &x);
		a[i] = x;
	}

	for (i=9; i>=0; i--) {
		printf("%d",  a[i]);
		printf("\n");

		maior();
	}

}


int maior() {
	
	int i, m;
	m = a[0];
	
	for (i=1; i<10; i++) {
		if(a[i] > m) 
			m = a[i];
	}

	printf("O maior e %d\n", m);
	
}

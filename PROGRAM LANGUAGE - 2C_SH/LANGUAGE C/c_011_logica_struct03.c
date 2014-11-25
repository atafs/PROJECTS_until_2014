#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
	int num;
	char nome[100];
	int nota;
} TipoAluno;


main() {
	
	TipoAluno pauta[20];
	pauta[1].num = 54149;
	pauta[1].nota = 20;
	strcpy ( pauta[1].nome, "Américo" );
	printf ("\n%d - %s - %d a Sistemas Operativos ;-)\n\n", pauta[1].num, pauta[1].nome, pauta[1].nota );	
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
	int num;
	char nome[100];
	int nota;
} TipoAluno;


main() {
	
	TipoAluno a;
	a.num = 54149;
	a.nota = 20;
	strcpy ( a.nome, "Américo" );
	printf ("\n%d - %s - %d a Sistemas Operativos ;-)\n\n", a.num, a.nome, a.nota );	
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


typedef struct {
	int num;
	char nome[100];
	int nota;
} TipoAluno;

main() {
	TipoAluno *p;
	p = (TipoAluno *) malloc( sizeof(TipoAluno) );
	p->num = 54149;
	strcpy ( p->nome, "Américo Tomás" );
	p->nota = 20;

	printf ("\nO Aluno %s com o número %d teve a nota %d ;-)\n\n", (*p).nome, (*p).num, (*p).nota ); 
}


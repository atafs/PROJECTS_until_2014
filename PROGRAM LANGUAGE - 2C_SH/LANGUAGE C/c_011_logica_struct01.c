#include <stdio.h>
#include <stdlib.h>
#include <string.h>


struct Aluno {
	int num;
	char nome[100];
	int nota;
} a;


main() {

	a.num = 54149;
	a.nota = 20;
	strcpy ( a.nome, "Américo" );
	printf ("\n%d - %s - %d\n\n", a.num, a.nome, a.nota );	
}

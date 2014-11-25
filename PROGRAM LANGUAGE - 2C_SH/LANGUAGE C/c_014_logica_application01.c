#include <stdio.h>
#include <string.h>

typedef struct {
	int num;
	char nome[100];
	int nota;
} TipoAluno;

TipoAluno pauta[20];
int n_alunos = 0;


main() {
	int opcao;
	do {
		printf ("1. Inserir aluno\n" );
		printf ("2. Apagar aluno\n" );
		printf ("3. Inserir nota\n" );
		printf ("4. Lista de alunos\n" );
		printf ("5. Pauta por nome\n" );
		printf ("0. Sair \n" );
		
		scanf ("%d", &opcao );
		limpa_linha(); 		
 
		if ( opcao == 1 ) inserir_aluno ( );
		if ( opcao == 2 ) nop ( );
		if ( opcao == 3 ) nop ( );
		if ( opcao == 4 ) listar ( );
		if ( opcao == 5 ) nop ( );
	} while ( opcao != 0 );
}


int limpa_linha() {
	while ( fgetc(stdin) != '\n');
}


int nop ( ) {
	printf ("Opção ainda em construção\n" );
	printf ("Carregue enter para continuar...");
	limpa_linha();
}

int inserir_aluno () {
	int num;
	char nome[100];
	printf ("No aluno: " );
	scanf ("%d", &num );
	limpa_linha();
 	//senão o nome vai apanhar o enter e ficar vazio
	
	printf ("Nome: " );
	gets( nome );
	pauta[n_alunos].num = num;
	strcpy ( pauta[n_alunos].nome, nome );
	n_alunos++;
}

int listar () {
	int i;
	for ( i = 0; i < n_alunos; i++ ) {
		printf ("\nAluno %d: %5d %s\n\n", ++i, pauta[i].num, pauta[i].nome );
	}
}


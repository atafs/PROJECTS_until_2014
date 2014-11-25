#include <stdio.h>

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
 
		if ( opcao == 1 ) nop ( );
		if ( opcao == 2 ) nop ( );
		if ( opcao == 3 ) nop ( );
		if ( opcao == 4 ) nop ( );
	} while ( opcao != 0 );
}


int nop ( ) {
	printf ("Opção ainda em construção\n" );
	printf ("Carregue enter para continuar...");
	fgetc (stdin);
}


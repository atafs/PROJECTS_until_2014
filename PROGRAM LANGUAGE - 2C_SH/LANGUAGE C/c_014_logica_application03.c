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
	ler();	

	do {
		printf ("1. Inserir aluno\n" );
		printf ("2. Apagar aluno\n" );
		printf ("3. Lançar nota\n" );
		printf ("4. Lista de alunos\n" );
		printf ("5. Pauta por nome\n" );
		printf ("0. Sair \n" );
		
		scanf ("%d", &opcao );
		limpa_linha(); 		
 
		if ( opcao == 1 ) inserir_aluno ( );
		if ( opcao == 2 ) nop ( );
		if ( opcao == 3 ) lancar_nota ( );
		if ( opcao == 4 ) listar ( );
		if ( opcao == 5 ) pauta_nome ( );
	} while ( opcao != 0 );
	gravar ();

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
		printf ("%5d %s\n", pauta[i].num, pauta[i].nome );
	}
	printf ("\n");
}


int lancar_nota ( ) {
	int i, num;
	printf ("No aluno: " );
	scanf ("%d", &num );
	limpa_linha();

	for ( i = 0; i < n_alunos; i++ ) {
		if (pauta[i].num == num) break;
	}

	if ( i == n_alunos ) {
		printf ("Aluno %d não consta\n", i );
		return;
	}

	printf ("Nota: " );
	scanf ("%d", &num );
	pauta[i].nota = num;
	limpa_linha();
}


int pauta_nome ( ) {
	
	int i;
	printf ("==========================================================================\n");
	printf ( "No      %-50s   Nota\n", "Nome");
	printf ("==========================================================================\n");
	
	for ( i = 0; i < n_alunos; i++ ) {
		printf ( "%-5d    %-50s %4d\n", pauta[i].num,
		pauta[i].nome, pauta[i].nota );
	}
	printf ("==========================================================================\n");
	
}

int ler() {
	FILE *f;
	f = fopen ("pauta.txt", "r" );
	if ( f == NULL ) return;
		printf ("Carregar ficheiro...");

	int num, nota;
	char nome[100];
	
	while ( fscanf ( f, "%d", &num ) != EOF ) {
 		fgets ( nome, 100, f );
		nome[strlen(nome)-1] = 0;
		fscanf ( f, "%d", &nota );

		pauta[n_alunos].num = num;
		strcpy ( pauta[n_alunos].nome , nome );
		pauta[n_alunos].nota = nota;
		n_alunos++;
	}
	fclose(f);
	printf ("\n");
}


int gravar() {
	FILE *f;
	f = fopen ("c_014_logica_application03_pauta.txt", "w" );
	int i;
	for ( i = 0; i < n_alunos; i++ ) {
		fprintf ( f, "%d\n%s\n%d\n" , pauta[i].num, pauta[i].nome,
		pauta[i].nota );
	}
	fclose(f);
}













/*
int espacos( char c, int n) {
	int i;
	for ( i = 1; i < n; i++ ) putchar (c) ;
}


int ordenar_nome ( ) {
	int i, j;
	for ( i = 0; i < n_alunos; i++ ) {
		for ( j = i + 1; j < n_alunos; j++ ) {
			if ( strcmp( pauta[i].nome, pauta[j].nome ) > 0 ) {
				TipoAluno a;
				a = pauta[i];
				pauta[i] = pauta[j];
				pauta[j] = a;
			}
		}
	}
}
*/

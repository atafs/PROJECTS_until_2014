// V - Ficheiros
//Apresente um menu com opcoes: mostrar, acrescentar, apagar, duplicar e sair

#include <stdio.h>
#include <stdlib.h>

main () {

	int opcao ;
	char s [0];

	while (1) {

	printf ("1. Mostrar\n");
	printf ("2. Acrescentar\n");
	printf ("3. Apagar\n");
	printf ("4. Duplicar\n");
	printf ("0. Sair\n");

	printf ( " >>>>> Opcao: " );
	fgets ( s , 80 , stdin );
	opcao = atoi ( s );
	
	if ( opcao == 0 ) exit (0);

	if ( opcao == 1 ) mostrar();
	if ( opcao == 2 ) acrescentar();
	if ( opcao == 3 ) apagar();
	if ( opcao == 4 ) duplicar();

	}
}

int duplicar () {
	char s [80];
	printf("Nº da linha a duplicar: ");
	fgets ( s , 80 , stdin );
	int n = atoi ( s );

	int i ;
	FILE *fpr , *fpw ;

	// 1 a passo copiar para um aux todas as linhas ,	
	// acrescentando a nova
	fpr = fopen ( "c_014_logica_application04.txt", "r" );
	fpw = fopen ( "c_014_logica_application04_aux.txt", "w" );

	for ( i=1; fgets ( s , 80 , fpr ); i++ ) {
		fprintf ( fpw, "%s", s );
		if ( i == n ) fprintf ( fpw, "%s", s );
	}

	fclose ( fpr );
	fclose ( fpw );

	// ! aux . txt ja tem a linha nova
	// copiar aux -> teste . txt
	fpr = fopen ( "c_014_logica_application04_aux.txt" , "r" );
	fpw = fopen ( "c_014_logica_application04.txt" , "w" );
	for ( i=1; fgets ( s , 80 , fpr ); i++ )
		fprintf ( fpw, "%s", s );

	fclose ( fpr );
	fclose ( fpw );
}


int apagar () {
	char s [80];
	printf ("Nº de linhas: ");
	fgets ( s , 80 , stdin );
	int n = atoi ( s );

	int i ;
	FILE *fpr , *fpw ;

// 1 a passo copiar para um aux todas as linhas menos a que queremos apagar

	fpr = fopen ( "c_014_logica_application04.txt", "r" );
	fpw = fopen ( "c_014_logica_application04_aux.txt", "w" );
	for ( i =1; fgets ( s , 80 , fpr ); i ++ ) {
		if ( i != n ) 
			fprintf ( fpw , "%s", s );
	}

	fclose ( fpr );
	fclose ( fpw );

// ! aux . txt ja tem a linha apagada
// copiar aux -> teste . txt

	fpr = fopen ( "c_014_logica_application04_aux.txt", "r" );
	fpw = fopen ( "c_014_logica_application04.txt", "w" );
	for ( i=1; fgets ( s, 80, fpr ); i++ )
		fprintf ( fpw, "%s", s );

	fclose ( fpr );
	fclose ( fpw );
}

int acrescentar () {

	char s [80];
	printf ( "Nova linha: " );
	fgets ( s , 80 , stdin );
	
	FILE *fp = fopen ( "c_014_logica_application04.txt", "a" );
	if ( fp == NULL ) 
		printf ( "Erro \n" );
		
	fprintf ( fp , "%s", s );
	fclose ( fp );
}


int mostrar ( ) {

	int i ;
	char s [80];
	FILE *fp ;
	printf ( " ------------------------\n " );
	fp = fopen ( "c_014_logica_application04.txt", "r" );
	
	for ( i=1; fgets ( s, 80 , fp ) != NULL ; i++ )
		printf ( "%d: %s", i , s );

	fclose ( fp );
	printf ( "-------------- FIM -----------\n" );
}


























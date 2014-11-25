/* Menu com a opção de acrescentar alunos a uma pauta, listar e fazer a média usando um ficheiro

Menu com a opção de acrescentar alunos a uma pauta, listar e fazer a média usando um ficheiro */
#include <stdio.h>
#include <string.h>
 
typedef struct tipo_aluno {
    int  num;
    char nome[100];
    int  nota;
} TipoAluno;
 
TipoAluno pauta[20];
int nAlunos = 0;
 
main() {
        ler_ficheiro();
        int opcao;
        do {
                printf ("1. Acrescentar\n" );
                printf ("2. Listar\n" );
                printf ("3. Media\n" );
                printf ("0. Sair \n" );
       printf ("Opcao: ");
                scanf ("%d", &opcao );
                ler_enter( stdin);
                if ( opcao == 1 ) acrescentar();
                if ( opcao == 2 ) listar();
                if ( opcao == 3 ) media();
        } while  ( opcao != 0 );
        escrever_ficheiro();
}
 
int ler_enter( FILE *f) {
    while ( getc(f) != '\n');
}
 
int acrescentar ( ) {
    int num, nota ;
    char nome[100];
 
    printf ("Numero: ");
    scanf("%d", &num); ler_enter(stdin);
 
    printf ("Nome: ");
    fgets ( nome, 100, stdin );
    tirar_enter(nome);
 
    printf ("Nota: ");
    scanf("%d", ¬a); ler_enter( stdin);
 
    pauta[nAlunos].num = num;
    strcpy ( pauta[nAlunos].nome, nome) ;
    pauta[nAlunos].nota = nota;
    nAlunos++;
}
 
int tirar_enter ( char s[] ) {
    char c = s[ strlen(s) -1 ];
    if ( c == '\n' )
      s[strlen(s)-1] = 0;
}
 
int listar () {
  int i;
  for (i=0;i<nAlunos; i++) {
     printf ("  pauta[%d]: %5d - %s - %d\n", i, pauta[i].num, pauta[i].nome, pauta[i].nota );
  }
}
 
int media() {
    int i, soma = 0;
    for ( i = 0; i < nAlunos; i ++ ) {
        soma = soma + pauta[i].nota;
    }
    printf ("Media: %f\n", (float)soma / nAlunos );
}
 
int ler_ficheiro() {
    int num, nota ;
    char nome[100];
 
    FILE *fp;
    fp = fopen ("pauta.txt", "r" );
    if ( fp == NULL ) {
      printf("O ficheiro pauta.txt ainda nao existe\n");
      return;
    }
 
    while ( fscanf ( fp, "%d", &num) != EOF )  {
        ler_enter ( fp );
        fgets ( nome, 100, fp );
        tirar_enter ( nome );
  fscanf ( fp, "%d", ¬a );
        ler_enter ( fp );
       
       pauta[nAlunos].num = num;
       strcpy ( pauta[nAlunos].nome, nome) ;
       pauta[nAlunos].nota = nota;
       nAlunos++;
    }
    fclose ( fp );
}
 
int escrever_ficheiro () {
    FILE *fp;
    int i;
 
    fp = fopen ("pauta.txt", "w" );
    if ( fp == NULL ) {
      printf("Erro ao criar o ficheiro\n");
      return;
    }
 
    for (i=0;i<nAlunos; i++) {
      fprintf(fp, "%d\n%s\n%d\n", pauta[i].num, pauta[i].nome, pauta[i].nota );
    }
 
    fclose ( fp );
}

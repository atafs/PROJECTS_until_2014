 /* Acrescentar alunos a uma pauta, listar e fazer a média

Pretende-se um programa que apresente um menu com a opções 1) acrescentar alunos a uma pauta (array), 2) listar e 3) fazer a média */
#include <stdio.h>
#include <string.h>
 
typedef struct tipo_aluno {
    int num;
    char nome[100];
    int nota;
} TipoAluno;
 
TipoAluno Pauta[20];
int nAlunos = 0;
 
void acrescentar();
void media();
void ler_enter();
 
int main() {
  int opcao;
  do {
    printf ("1. Acrescentar\n" );
    printf ("2. Listar\n" );
    printf ("0. Sair \n" );
    printf ("Opcao: ");
    scanf ("%d", &opcao );
    ler_enter();
    if ( opcao == 1 ) acrescentar();
    if ( opcao == 2 ) media();
  } while  ( opcao != 0 );
  return 0;
}
 
void ler_enter() {
  while ( getc(stdin) != '\n');
}
 
void acrescentar ( ) {
  int num, nota ;
  char nome[100];
 
  printf ("Numero: ");
  scanf("%d", &num); ler_enter();
 
  printf ("Nome: ");
  gets ( nome );
 
  printf ("Nota: ");
  scanf("%d", ¬a); ler_enter();
 
  Pauta[nAlunos].num = num;
  strcpy ( Pauta[nAlunos].nome, nome) ;
  Pauta[nAlunos].nota = nota;
  nAlunos++;
}
 
void media() {
    int i, soma = 0;
    for ( i = 0; i < nAlunos; i ++ ) {
        printf ("%d - %s - %d\n", Pauta[i].num, Pauta[i].nome, Pauta[i].nota );
        soma = soma + Pauta[i].nota;
    }
    printf ("Média: %d\n", soma / nAlunos );
}

 /* Menu com várias opções

Apresentar um menu

Pretende-se um programa que apresente um menu com 4 opções. */
#include <stdio.h>
 
void ler_enter();
void nop();
 
int main() {
  int opcao;
  do {
    printf ("1. Inserir\n" );
    printf ("2. Modificar\n" );
    printf ("3. Apagar\n" );
    printf ("4. Lista\n" );
    printf ("0. Sair \n" );
    printf ("Opcao: ");
    scanf ("%d", &opcao );
    ler_enter();
    if ( opcao == 1 ) nop();
    if ( opcao == 2 ) nop();
    if ( opcao == 3 ) nop();
    if ( opcao == 4 ) nop();
  } while  ( opcao != 0 );
  return 0;
}
 
void ler_enter() {
   while ( getc(stdin) != '\n' );
}
 
void nop () {
  printf ("Opção em construção\n" );
  printf ("Carregue enter para continuar...");
  ler_enter();
}

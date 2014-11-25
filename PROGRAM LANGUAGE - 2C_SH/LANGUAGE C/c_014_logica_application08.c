/* Menu para Inserir, Modificar, Apagar e Listar

Programa que apresenta um menu com as opções Inserir, Modificar, Apagar e Listar. */
#include <stdio.h>
main() {
    char cmd[100];
    do {
      printf ("Comando> ");
      fgets( cmd, 100, stdin );
      cmd [ strlen(cmd) -1 ] = 0;
      if ( strcmp( cmd, "inserir") == 0 ) nop( "Inserir" );
      if ( strcmp( cmd, "modificar") == 0 ) nop( "Modificar" );
      if ( strcmp( cmd, "apagar")  == 0 ) nop( "Apagar" );
      if ( strcmp( cmd, "listar")  == 0 ) nop( "Listar" );
    } while ( strcmp ( cmd, "sair" ) != 0 );
}
 
int ler_enter() {
    while ( getc(stdin) != '\n');
}
 
int nop ( char s[]) {
    printf ("Comando %s em construção\n", s );
    printf ("Carregue enter para continuar...");
    ler_enter();
}

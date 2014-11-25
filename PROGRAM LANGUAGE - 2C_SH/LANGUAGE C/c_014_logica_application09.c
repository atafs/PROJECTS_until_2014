//Pequeno editor de ficheiros de texto (com comandos)

#include <stdio.h>
 
char fnome[100];
 
main() {
    char cmd[100];
 
    printf ("Ficheiro: ");
    fgets ( fnome, 100, stdin );
    fnome [ strlen(fnome) -1 ] = 0;
 
    do {
        printf ("Comando> ");
        fgets( cmd, 100, stdin );
        cmd [ strlen(cmd) -1 ] = 0;
        if ( strcmp( cmd, "mostrar") == 0 ) mostrar();
        if ( strcmp( cmd, "acrescentar") == 0 ) acrescentar();
        if ( strcmp( cmd, "inserir") == 0 ) inserir();
        if ( strcmp( cmd, "apagar") == 0 ) apagar();
        if ( strcmp( cmd, "alterar") == 0 ) alterar();
    } while ( strcmp ( cmd, "sair" ) != 0 );
}
 
int mostrar() {
    int i;
    char s[100];
    FILE *fp = fopen( fnome, "r" );
    for( i = 0;  fgets ( s, 100, fp) != NULL; i++ ) {
        printf ("%d-> %s", i, s );
    }
    fclose ( fp );
}
 
int acrescentar() {
 
    char s[100];
 
    FILE *fp = fopen( fnome, "a" );
 
    printf ("Conteúdo: ");
    fgets ( s, 100, stdin );
    fprintf ( fp, "%s", s );       
 
    fclose ( fp );
 
}
 
int ler_enter() {
    while ( getc(stdin) != '\n');
}
 
int inserir() {
 
    int i, n;
    char s[100];
 
    printf( "nº da linha: ");
    scanf ("%d", &n);
    ler_enter();
 
    char ftemp[100];
    strcpy ( ftemp, fnome);
    strcat ( ftemp, ".tmp");
 
    FILE *fpi = fopen( fnome, "r" );
    FILE *fpo = fopen( ftemp, "w" );
 
    for( i = 0; i < n &&  fgets ( s, 100, fpi) != NULL; i++ ) {
        fprintf ( fpo, "%s", s );       
    }
 
    printf ("conteúdo: ");
    fgets ( s, 100, stdin );
    fprintf ( fpo, "%s", s );       
   
    while ( fgets ( s, 100, fpi) != NULL ) {
        fprintf ( fpo, "%s", s );       
    }
 
    fclose ( fpi );
    fclose ( fpo );
 
    // falta passar de ftemp para fnome
 
}
 
int apagar() {
 
}
 
int alterar() {
 
}

/* Menu para acrescentar números num array e fazer a média

Pretende-se um programa que apresente um menu com as opções de acrescentar números num array e fazer a média. */
#include <stdio.h>
 
int a[20];
int n = 0;
 
void ler_enter();
void acrescentar();
void media();
 
int main() {
   int opcao;
   do {
     printf ("1. Acrescentar\n" );
     printf ("2. Média\n" );
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
    int i;
    printf ("Numero: ");
    scanf("%d", &i);
    a[n++] = i;
}
 
void media() {
    int i, soma = 0;
    for ( i = 0; i < n; i ++ ) {
        soma = soma + a[i];
    }
    printf ("Média: %d\n", soma / n );
}

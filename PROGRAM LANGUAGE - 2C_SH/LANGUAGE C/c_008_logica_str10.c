/* Função que extrai campos de uma linha

Dada uma linha com campos separados por "dois pontos" (:), extrai qualquer um desses campos. */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
 
void obter_substring(char linha[], char resultado[], char separador, int indice) {
   int i, j=0, meu_indice = 0;
   for (i=0; linha[i] != '\0'; i++) {
     if ( linha[i] == separador ) {
       meu_indice++;
     } else if (meu_indice == indice) {
       resultado[j++]=linha[i];
     }
   }
   resultado[j]='\0';
}
 
int main() {
  char frase[] = "Maria:50 anos:170 cm:ruiva";
  char res[100];
 
  obter_substring(frase, res, ':', 2);
  printf("Terceiro campo: %s\n", res);
}

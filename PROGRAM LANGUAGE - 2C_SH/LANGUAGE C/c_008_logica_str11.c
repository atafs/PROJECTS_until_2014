//Funções para tratamento de campos numa string

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
 
int tirar_enter ( char s[] ) {
    char c = s[ strlen(s) -1 ];
    if ( c == '\n' ) s[strlen(s)-1] = 0;
}
 
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
 
int contar_letras(char *linha, char letra) {
  int i, nletras = 0;
  for (i=0; linha[i] != '\0'; i++) {
    if ( linha[i] == letra ) nletras++;
  }
  return nletras;
}
 
int main() {
  char frase[100], res[100];
  int i;
 
  printf("indique uma frase separada por \"dois pontos\" (:) : ");
  fgets(frase, 100, stdin);
  tirar_enter(frase);
 
  printf("A frase tem %d \"dois pontos\" (:) \n", contar_letras(frase,':') );
 
  obter_substring(frase, res, ':', 1);
  printf("segunda parte da frase: %s\n", res);
 
  for(i=0; i < contar_letras(frase,':') + 1 ; i++ ) {
    obter_substring(frase, res, ':', i);
    printf("subfrase %d : %s\n", i, res);
  }
}

/* Identificação de campos em strings

Imprime os varios campos de uma string (strtok) */

#include <stdio.h>
#include <string.h>
 
int main () {
        char s[] = "abc:123:xxx";
        char *p;
 
        p = strtok ( s, ":" );
        while (  p != NULL ) {
                printf ("tok: %s\n", p );
                p = strtok ( NULL, ":" );
        }
}

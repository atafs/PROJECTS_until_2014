//Função para separação de campos (strtok_n)

#include <stdio.h>
#include <string.h>
 
int main () {
    char s[] = "abc:123:xxx";
    char b[100];
    int n = strtok_n ( s, ':', b);
    while ( n > 0 ) {
        printf ("tok_n: %s\n", b );
        n = strtok_n ( NULL, ':', b);
    }
}
 
int strtok_n ( char *_str, int _c, char *b ) {
    static char *str;
    static int c, pos;
    if ( _str != NULL ) {
        str = _str;
        c = _c;
        pos = 0;
    }
    int i = 0;
    b[0] = 0;
    while ( str[pos] != 0 && str[pos] != c ) {
        b[i] = str[pos];
        i++;
        pos++;
    }
    b[i]=0;
    if ( str[pos] == c ) pos++;
    return str[pos] + (i > 0);
}

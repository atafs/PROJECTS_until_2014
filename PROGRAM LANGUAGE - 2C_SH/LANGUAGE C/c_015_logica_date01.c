/* Exemplos com data/hora

Mostra a data actual e os argumentos introduzidos */

#include <stdio.h>
#include <string.h>
#include <time.h>
 
main( int argn, char *argv[] ){
    struct tm st;
    time_t t;
 
    t = time ( NULL );
    st = * gmtime ( &t );
 
    printf ("%d-%02d-%02d\n", 1900+st.tm_year, st.tm_mon+1, st.tm_mday );
    if (argn == 4 )
      printf ("%s-%s-%s\n", argv[1], argv[2], argv[3]);
    else
      printf("sem argumentos\n");
}
 

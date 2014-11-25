//Estruturas de controlo

//Lê 10 números e soma-os

/* jrg, 8-02-2010 */

#include <stdio.h>
main() {
    int i, n, soma = 0;
    printf ("Numeros: ");
    for ( i=0; i<10;i++) {
        scanf("%d", &n);
        soma += n;
    }
    printf ("Soma: %d\n", soma );
}

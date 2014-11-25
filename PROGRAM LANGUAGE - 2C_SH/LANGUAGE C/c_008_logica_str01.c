#include <stdio.h>
#include <string.h>

int main() {

    char string1[50] = "Hello SO";
    char string2[30] = "World of Computers";

    //strcat	
    strcat ( string1, ", ");        //espaço entre as str
    strcat ( string1, string2 );    //juntar as str 
    strcat ( string1, "!!!\n");     //fazer parágrafo	

    printf ("\n%s\n", string1 );
}


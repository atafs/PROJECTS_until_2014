#include <stdio.h>
#include <string.h>

int main() {

    char name[100];

    //interact with user
    printf ("Nome: ");
    fgets (name, 100, stdin);
    name[strlen(name) - 1] = '\0';
	
    //print result
    printf ("\nO meu Nome é %s\n\n", name);
}

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main() {
	
	//pid
	printf ("\nPID=%d\n", getpid() );
	
	//loop
	char s[100];
	while ( 1 ) {
		printf (":-> ");
		scanf("%s", s);
		printf ("[Print input data] - %s\n\n", s);
		
		//exit
		if ( strcmp(s, "exit") == 0 )
			exit(0);
	}
}


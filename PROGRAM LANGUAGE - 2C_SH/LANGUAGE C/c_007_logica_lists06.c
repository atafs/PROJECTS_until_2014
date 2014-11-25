#include <stdio.h>

main() {

	char s[] = "Hello SO\n";
		
	printf ("\n%d\n", foo_strlen(s) );
}

int foo_strlen (char s[] ) {
	int n = 0;
	while ( s[n] )	n++;
	
	return n;
}


#include <stdio.h>

//function1 (void has to be ont top of main)
void func1 ( int a, int b ) {
	printf ("\nRecebi argumentos %d e %d\n", a, b );
}

int main() {
	
	//call function
	func1(3, 4);
	
	int sum = func2(3, 6);
	printf ("\nA soma dos Argumentos recebidos foi %d\n\n", sum);
	
}

//function2 
int func2 ( int a, int b ) {
	return a + b;
}
	


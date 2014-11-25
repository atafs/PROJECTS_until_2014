#include "0_defines.h"

int main() {

	//criacao de uma shm
	int id = shmget ( 1000, 100, IPC_CREAT | 0666 );
	exit_on_error (id, "ERRO na criacao-ligacao");
	printf("Criada memoria partilhada com id %d\n", id);

	void *p = shmat ( id, 0, 0 );
	exit_on_error (id, "ERRO no attach");

	char *s = (char *) p;
	strcpy ( s, "Hello\n" );
}
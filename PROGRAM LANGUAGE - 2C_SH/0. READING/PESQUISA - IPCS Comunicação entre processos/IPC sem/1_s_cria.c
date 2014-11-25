#include "defines.h"
main() {
  	int id = semget(1234, 5, IPC_CREAT | 0666);
  	exit_on_error(id,"o semget correu mal");
  	printf("Estou a usar o grupo de semaforos %d\n", id);
	
	

}

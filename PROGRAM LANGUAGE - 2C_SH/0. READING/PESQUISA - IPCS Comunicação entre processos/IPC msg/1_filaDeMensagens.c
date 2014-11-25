#include "defines.h"

int main() {
	
	int id;
	id = msgget(1234, 0666 | IPC_CREAT);
	exit_on_error(id, "Erro ao Criar\n");
	printf("Estou a usar a fila de mensagens id=%d\n", id);
}

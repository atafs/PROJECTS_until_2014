#include "defines.h"
typedef struct {
	long tipo;
	struct {
		char texto[90];
		char nome[20];
		int pid;
	} conteudo;
} mensagem;
main(){
	int id, status;
	id = msgget(4321, 0666 | IPC_CREAT | IPC_EXCL);
	exit_on_error(id,"erro no msgget.");
	printf("Estou a usar a fila de mensagens id = %d\n",id);

	mensagem m;
	while(1) {
		status = msgrcv(id, &m, sizeof(m.conteudo), 1, 0);
		exit_on_error(status, "erro ao receber");

		printf("Recebi de %s a msg: %s\n", m.conteudo.nome, m.conteudo.texto);
		strcpy(m.conteudo.texto, "Sr(a) ");
		strcat(m.conteudo.texto, m.conteudo.nome);
		strcat(m.conteudo.texto, " a sua msg foi recebida......");
		m.tipo = m.conteudo.pid;

		status = msgsnd(id, &m, sizeof(m.conteudo), 0);
		exit_on_error(status, "erro ao enviar");
	}
}


#include "defines.h"

typedef struct {
	long tipo;
	struct {
		char texto[90];
		char nome[20];
		int pid;
	} conteudo;
}mensagem;

int main() {

	//variaveis
	int id, res;
	mensagem m;
	
	id=msgget(4321, 0);
	exit_on_error(id, "Erro no msgget");

	//definir 
	m.tipo=1;
	strcpy(m.conteudo.nome, "CR7");
	m.conteudo.pid = getpid();
	fgets(m.conteudo.texto, 100, stdin);
	
	res=msgsnd(id, &m, sizeof(m.conteudo), 0);
	exit_on_error(id, "Erro ");
	
	res=msgrcv(id, &m, sizeof(m.conteudo), getpid(), 0);
	exit_on_error(id, "erro ao receber");
	
}

#include "defines.h"
typedef struct {
  long tipo;
  char texto[80];
} minha_msg;

main() {
  minha_msg m;
  int id = msgget(1234, IPC_CREAT | 0666);
  exit_on_error(id,"o msgget correu mal");
  printf("Estou a usar a fila de mensagens %d\n", id);

  printf("Diga a mensagem:");
  fgets(m.texto, 80, stdin);
  m.tipo=33;
  int res = msgsnd(id, &m, sizeof(m.texto), 0);
  exit_on_error(res, "o enviar correu mal");
}

#include "defines.h"
typedef struct {
  long tipo;
  char texto[80];
} minha_msg;

main() {
  minha_msg m;
  int id = msgget(1234, 0);
  exit_on_error(id,"o msgget correu mal");
  printf("Estou a usar a fila de mensagens %d\n", id);

  int res = msgrcv(id, &m, sizeof(m.texto), 33, 0);
  exit_on_error(res, "o receber correu mal");
  printf("A mensagem foi: %s\n", m.texto);
}

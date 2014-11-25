#include "defines.h"
struct sembuf UP = { 0, 1, 0};
struct sembuf DOWN = { 0, -1, 0};
main() {
  int id = semget(1234, 5, 0);
  exit_on_error(id,"o semget correu mal");
  printf("Estou a usar o grupo de semaforos %d\n", id);

  int res = semop(id, &DOWN, 1);
  exit_on_error(res,"o semop correu mal");
}


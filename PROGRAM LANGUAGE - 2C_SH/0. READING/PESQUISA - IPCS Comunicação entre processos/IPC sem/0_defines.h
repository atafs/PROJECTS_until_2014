#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <sys/sem.h>
#include <string.h>
#include <sys/sem.h>

#define exit_on_error(x,m) if (x<0) { perror(m); exit(1); }

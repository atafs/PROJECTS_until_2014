#!/bin/bash

echo "Linha de Comando: $0"
echo "Arg1: $1"
echo "Arg2: $2"
echo "Arg3: $3"
echo "Cardinal: $#"
echo "asterisco: $*"



if test 6 -lt $1			#test é um comando... $1 é o primeiro argumento de um script
then
	echo "Funcionou"
else
	echo "Falhou complectamente"
fi



#vai mandar para o bash interpretar... podia interpretar com piten, etc...

#!/bin/bash


if [ $1 -ge $2 ];then			#test é um comando... $1 é o primeiro argumento de um script

	echo "o Argumento $1 é maior ou igual a $2"
else
	echo "O Argumento $1 não é maior que $2"
	exit 1
fi


echo "atafs> $0"
echo "Arg1: $1"
echo "Arg2: $2"
echo "Cardinal: $#"
echo "asterisco: $*"


#vai mandar para o bash interpretar... podia interpretar com piten, etc...

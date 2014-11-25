#!/bin/bash

echo -n "username: "; read x
if [ -z "$x" ]; then
	echo "string vazia (primeiro if)"

else

	if [ $x = $USER ]; then 
		echo "acertou"
	else
		echo "falhou"
	fi
fi

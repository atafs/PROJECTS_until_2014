#!/bin/bash

echo -n "diga um numero: "; read x
echo -n "tente adivinhar: "; read n

while [ $x != $n ]; do

	if [ -z "$x" ]; then
		echo "string vazia (primeiro if)"

	elif [ $n -lt $x ]; then		# -lt: less then
		echo "abaixo"
		echo -n "tente adivinhar: "; read n

	elif [ $n -gt $x ]; then 		# -gt: greater then
		echo "acima"
		echo -n "tente adivinhar: "; read n

	fi
done
	
	# quando $x = $n
	echo "FINALMENTE ACERTOU!!!!"



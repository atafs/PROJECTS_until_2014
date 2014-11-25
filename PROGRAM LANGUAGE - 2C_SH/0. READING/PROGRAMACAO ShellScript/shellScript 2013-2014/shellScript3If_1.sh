#!/bin/bash

echo -n "username: "
read x

if [ $x = $USER ]; then 
	echo "acertou"
else
	echo "falhou"
fi

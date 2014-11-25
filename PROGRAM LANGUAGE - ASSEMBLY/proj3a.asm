jump main

trabid: .string "Trabalho 3 de AC"
0

um: 	1
i: 	2		# variável i (pode ser modificado para imprimir a partir de um endereço de memória desejado.




main:	loco trabid	# n=1, actual SP=1
	addd i		# ponto de leitura inicial da string 
	push
		

	call recurs	# SP=0
	
	lodl 0		# imprime no ecrã o primeiro caracter guardado antes de o destruir.
	pshi
	pop
	stod 4094
	
	insp 1
	halt


recurs:	lodl 1
	pshi
	pop

	jzer rfim	# condição para Parar (0)
	
	lodl 1
	addd um
	push		# novo SP=0
	
	call recurs
	
	lodl 0		# carregar a posição guardada na vaiável local
	pshi		
	pop
	stod 4094	# imprimir no ecrã a string ou matriz

	insp 1		# destruir a variável local
	retn

rfim:	insp 2
	retn





	
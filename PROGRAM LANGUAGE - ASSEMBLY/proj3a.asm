jump main

trabid: .string "Trabalho 3 de AC"
0

um: 	1
i: 	2		# vari�vel i (pode ser modificado para imprimir a partir de um endere�o de mem�ria desejado.




main:	loco trabid	# n=1, actual SP=1
	addd i		# ponto de leitura inicial da string 
	push
		

	call recurs	# SP=0
	
	lodl 0		# imprime no ecr� o primeiro caracter guardado antes de o destruir.
	pshi
	pop
	stod 4094
	
	insp 1
	halt


recurs:	lodl 1
	pshi
	pop

	jzer rfim	# condi��o para Parar (0)
	
	lodl 1
	addd um
	push		# novo SP=0
	
	call recurs
	
	lodl 0		# carregar a posi��o guardada na vai�vel local
	pshi		
	pop
	stod 4094	# imprimir no ecr� a string ou matriz

	insp 1		# destruir a vari�vel local
	retn

rfim:	insp 2
	retn





	
jump main

matriz:	.string " xxx   xxx"
	.string "x   x x   "
	.string "x   x x   "
	.string "x   x x   "
	.string " xxx  x   "
	.string "x   x x   "
	.string "x   x x   "
	.string "x   x  xxx" 
0

ndez:	-10
i:	0		# vari�vel directa i			

n_lin:	8
n_col:	10





############################# Matriz: Escrever um caracter na matriz ######################




main:	loco 0		# escrever a matriz no ecr�		
	push		# SP=1, vari�vel local  j=0,
	call mciclo	# SP=0 (pois��o de retorno)
	insp 1
	halt

mciclo:	loco matriz
	addl 1
	addd i
	pshi
	pop
	
	
	jzer fim	# instru��o de paragem: 0
	stod 4094
	
	
	loco 1		# j++ (contador)
	addl 1
	stol 1	

	lodl 1		# 
	addd ndez	# if (j-10==0), muda de linha
	jzer linha

	lodl 1		# if (j-10!=0), regressa ao mciclo
	addd ndez
	jnze mciclo	
		

limpa:	loco 0		# limpa o contador (j) e recome�a a contagem.
	stol 1
		
	loco 10		#i++ (passo a ler o valor da linha seguinte)
	addd i
	stod i

	
	jump mciclo


linha:	loco 10		# mudar de linha: fazer par�grafo. 
	stod 4094
	jump limpa


fim:	retn



	

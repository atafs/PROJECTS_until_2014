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


n_lin:	8
n_col:	10

res:	0
i_:	0		# contador para imprimir a matriz
pos:	0
esc:	'c'

j_:	3		# variável j global (pode ser modificada)



############################# Escrever um caracter na matriz ######################




main:	loco 7		# variavel local i...............SP=4, (pode ser modificada)
	push
	lodd n_col	# n_col..........................SP=3
	push
	call multi	# posição de retn................SP=2 (os valores de SP=1 e SP=0 estão na função multi)	
	insp 2
	
	stod res
	loco matriz
	addd j_		# variável j_ 
	addd res
	stod pos

	lodd esc	# escreve o caracter na matriz na posição (i,j)	
	push		
	lodd pos	
	popi


############################# Escrever a matriz no ecrã ######################

	
	loco 0		# escrever a matriz no ecrã		
	push		# j=0, SP=0 (após a pilha ter sido destruída na função multi)

ciclo:	loco matriz
	addl 0
	addd i_
	pshi
	pop
	
	
	jzer fim	# instrução de paragem: 0
	stod 4094
	
	
	loco 1		# j++
	addl 0
	stol 0	

	lodl 0		# 
	addd ndez	# if (j-10==0), muda de linha
	jzer limpa

	lodl 0		# if (j-10!=0), quero continuar, regressando ao ciclo
	addd ndez
	jnze ciclo	
		

limpa:	loco 10		# mudar de linha: enter 
	stod 4094

	loco 0		# limpa o contador (j) e recomeça o ciclo
	stol 0
		
	loco 10		#i_++
	addd i_
	stod i_

	
	jump ciclo


fim:	insp 1
	halt


###################### função multiplicação #############################


multi:	loco 0		# multi (int x, int y)... 
	push		# resultado=0..................... SP=1
	push		# contador=0...................... SP=0
	
mciclo:	lodl 0
	subl 3
	jpos melse	# If (i-y<0), continua; Mas (i-y>=0), salta para melse.
			

	lodl 1
	addl 4
	stol 1		# res=res+x

	loco 1
	addl 0
	stol 0		# c=c+1

	jump mciclo
	
		
melse:	lodl 1		# AC = res, ou seja, busco o resultado
	insp 2		# fiz 2 push e tenho de os apagar
	retn

	

	
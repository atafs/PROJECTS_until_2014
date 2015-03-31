jump main

matriz:	.string " xxx   xxx"
	.string "x   x x   "
	.string "x   x x   "
	.string "x   x x   "
	.string " xxx  x   "
	.string "x   x x   "
	.string "x   x x   "
	.string "x   x  xxx" 


n_lin:		8
n_col:		10

m: 		0
c: 		0

res:		0
j:		1		# variável j (directa ou global, que pode ser modificada; algarismo das unidades)


###################### Função Multiplicação #########################

	
main:		loco 4		# SP=4, variavel i (local, que pode ser modificada; algarismo das dezenas; de 0 a 79) 
		push
		lodd n_col	# SP=3, n_col... 	
		push
		call multi	# SP=2
		insp 2
		
		stod res
		loco matriz
		addd j
		addd res
		push		# SP=2 (valor (i,j)
	
		pshi		# imprimir o valor que está dentro da posição de memória (i,j)
		pop
		stod 4094
		loco 10		# mudar de linha
		stod 4094
	

########## Imprimir no ecrã o nº inteiro corresponde à posição de memória #######
	

		loco 10	
		push		# SP=1.. subtrator das dezenas...
		call div_rest	# SP=0... retorno
		insp 2
			
		
		loco '0'	# valor das dezenas
		addd m		
		stod 4094
				
		loco '0'	# valor da unidade
		addd c
		stod 4094	
		halt	

###################### Função Multiplicação ######################################



multi:		loco 0		# multi (int x, int y)... 
		push		# resultado=0..	SP=1
		push		# contador=0... SP=0
	
mciclo:		lodl 0
		subl 3
		jpos melse	# If (i-y<0), continua; Mas (i-y>=0), salta para melse. 
			
	
		lodl 1
		addl 4
		stol 1		# res=res+x

		loco 1
		addl 0
		stol 0		# c=c+1

		jump mciclo
	
		
melse:		lodl 1		# AC = res, ou seja, busco o resultado
		insp 2		# fiz 2 push e tenho de os apagar
		retn

	

############### função divisão: imprimir o nº inteiro no ecrã ############



div_rest:	lodl 1	 	# SP=0; 	
		subl 2
		jneg if_div	# If (i>10), i=i-10; m=m+1...  ie: 0>10-i; ie: 10-i<0 ()...  
		jzer if_div	# O mesmo se for zero.
		lodl 2		# Else, return i; i=AC... resto da divisão
		stod c	
		retn

if_div:		lodl 2		# i=i-10
		subl 1
		stol 2		
		
		loco 1		# m=m+1
		addd m
		stod m
		jump div_rest	




	
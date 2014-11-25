jump main

matriz:	.string " xxx   xxx"
	.string "x   x x   "
	.string "x   x x   "
	.string "x   x x   "
	.string " xxx  x   "
	.string "x   x x   "
	.string "x   x x   "
	.string "x   x  xxx" 


n_lin:	8
n_col:	10

res:	0
j:	4			# variavel j global/directa (pode ser modificada para o valor desejado)


main:		loco 3		# SP=4, variavel x local (pode ser modificada para o valor desejado)
		push
		lodd n_col	# n_col... 	SP=3
		push
		call multi	# 		SP=2
		insp 2
	
		stod res
		loco matriz	# pos=matriz+j+(i*n_col)
		addd j
		addd res
		halt


multi:		loco 0		# multi (int x, int y)... 
		push		# resultado=0..	SP=1
		push		# contador=0... SP=0
	
1aciclo:	lodl 0
		subl 3
		jpos 1aelse	# If (i-y<0), continua; Mas (i-y>=0), salta para 1aelse. 
				

		lodl 1
		addl 4
		stol 1		# res=res+x

		loco 1
		addl 0
		stol 0		# c=c+1

		jump 1aciclo
	
		
1aelse:		lodl 1		# AC = res, ou seja, busco o resultado
		insp 2		# fiz 2 push e tenho de os apagar
		retn

	
	 
	 
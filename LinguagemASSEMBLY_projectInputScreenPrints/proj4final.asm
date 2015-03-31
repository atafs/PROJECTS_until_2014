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
10

n_lin:	8
n_col:	10


trabid: .string "Trabalho 3 de AC"
0


############ vari�veis necess�rias, etc ##########


inicio:	0		# vari�vel de in�cio de leitura da string
i:	0		# vari�vel i
j:	0		# vari�vel j


l:	0
k: 	0
m: 	0
v: 	0

cont_p: 0
cont_b:	0

preto:	'x'
branco:	' '

pret_m:	.string "Preto:  "
0
bran_m:	.string "Branco: "
0


ndez:	-10
i_:	10 		# preciso de ambos os 10 (um vai ser modificado e o outro n�o)
dez:	10

um:	1
j--:	10


##################################################



main:	jump prj4_1

per4_2:	jump prj4_2	
per4_3:	jump prj4_3
per4_4:	jump prj4_4	
per4_5:	jump prj4_5
per4_6: jump prj4_6
	


############ projecto da pergunta 4, al�nea 1) ######################



prj4_1:	lodd inicio	# i=in�cio
	push		# SP=1
	call tprint	# SP=0
	insp 1
	
	loco 10
	stod 4094	# mudar de linha
	stod 4094	# dois espa�os
	jump per4_2	# regressar ao main


tprint:	loco trabid	# trabid print
	addl 1
	pshi
	pop

	jzer tfim	# else: i=0, jzer fim; trabid fim;
	stod 4094
	
	loco 1		# i++
	addl 1
	stol 1		
	
	
	jump tprint

tfim:	retn



############ projecto da pergunta 4, al�nea 2) ######################




prj4_2:	loco 0		# escrever a matriz no ecr�		
	push		# j=0, SP=0
	call mprint	# matriz print
	insp 1
	
	loco 10		# dar espa�o
	stod 4094
	stod 4094

	loco 0		# limpar os contadores
	stod i		

	jump per4_3	



mprint:	loco matriz
	addl 1
	addd i
	pshi
	pop
	
	
	jzer mfim	# instru��o de paragem: 0
	stod 4094
	
	
	loco 1		# j++
	addl 1
	stol 1

	lodl 1		# 
	addd ndez	# if (j-10==0), muda de linha
	jzer linha

	lodl 1		# if (j==10), j=0, enter; ie: j-10==0 quero que continue, mas...
	addd ndez
	jnze mprint
	

	

linha:	loco 10		# mudar de linha: enter 
	stod 4094


limpa:	loco 0		# limpa o contador (j) e recome�a o ciclo
	stol 1
		
	loco 10		#i++
	addd i
	stod i

	jump mprint
	

mfim:	retn
	



############ projecto da pergunta 4, al�nea 3) ######################



prj4_3:	loco 0	
	push			# j=0, SP=0

pciclo:	loco matriz
	addl 0
	pshi			# SP=0
	
	loco 1			# j++
	addl 1
	stol 1	

	pop

	jzer print_mp
	
	subd preto		# condi��o: j=='x', ie: j-'x'==0; jzer ou jneg
	jnze cbranc


cpreto:	loco 1			# cont_p ++ (cont_p de pretos)
	addd cont_p
	stod cont_p
	jump pciclo


cbranc:	loco 1
	addd cont_b
	stod cont_b
	jump pciclo




###### imprimir string com n�mero ###############

	
print_mp:	loco pret_m	# imprimir matriz	
		addd i
		pshi
		pop
		jzer print_intp

		stod 4094

		loco 1		# i++
		addd i
		stod i
		jump print_mp
		

print_intp:	lodd cont_p	# i= vari�vel
		push		# SP=4, vari�vel l (milhares)
		loco 1000
		push		# SP=3, vari�vel k (centenas)
		loco 100	
		push		# SP=2.. vari�vel m (dezenas) ; subtrator das dezenas...
		loco 10
		push		# SP=1.. subtrator das centenas...	
		call div_restp	# SP=0... retorno
		insp 3


		loco '0'	# imprimir no ecr� os algarismos (milhares, centenas, dezenas e unidade)
		addd l
		stod 4094
		
		loco '0'
		addd k
		stod 4094
	
		loco '0'
		addd m
		stod 4094
		
		loco '0'
		addd v
		stod 4094

		loco 10		# mudar de linha
		stod 4094

		loco 0		# limpar o contador i
		stod i	
		stod l
		stod k
		stod m
		stod v	
		jump print_mb	


div_restp:	lodl 4		# condi��o para os milhares
		subl 3
		jpos if_ldivp

		
		lodl 4		# condi��o para as centenas
		subl 2
		jpos if_kdivp


		lodl 4	 	# condi��o para as dezenas	
		subl 1
		jpos if_divp	# If (v>=10), v=v-10; m=m+1...  ie: 0>=10-v; ie: 10-v=<0 ()...  
		lodl 4
		stod v	
		retn


if_ldivp:	lodl 4		# actualizar o SP=4
		subl 3
		stol 4

		loco 1		# l+=
		addd l
		stod l
		jump div_restp


if_kdivp:	lodl 4		# actualizar o SP=4
		subl 2
		stol 4

		loco 1		# k+=
		addd k
		stod k
		jump div_rest



if_divp:	lodl 4		# v=v-10
		subl 1
		stol 4		
		
		loco 1		# m=m+1
		addd m
		stod m
		jump div_restp	



##################################################	

print_mb:	loco bran_m	# imprimir matriz	
		addd i
		pshi
		pop
		jzer print_intb

		stod 4094

		loco 1		# i++
		addd i
		stod i
		jump print_mb
		

print_intb:	lodd cont_b	# SP=5, vari�vel
		push		# SP=4, vari�vel l (milhares)
		loco 1000
		push		# SP=3, vari�vel k (centenas)
		loco 100	
		push		# SP=2.. vari�vel m (dezenas) ; subtrator das dezenas...
		loco 10
		push		# SP=1.. subtrator das centenas...	
		call div_rest	# SP=0... retorno
		insp 3


		loco '0'
		addd l
		stod 4094
		
		loco '0'
		addd k
		stod 4094
		
		loco '0'
		addd m
		stod 4094
		
		loco '0'
		addd v
		stod 4094	
		
		loco 10		# enter: criar espa�os (melhorar a apresenta��o)
		stod 4094
		stod 4094
		stod 4094

		loco 0		# limpar contadores
		stod i
		stod j
		jump per4_4


div_rest:	lodl 4		# condi��o para os milhares
		subl 3
		jpos if_ldiv

		
		lodl 4		# condi��o para as centenas
		subl 2
		jpos if_kdiv


		lodl 4	 	# condi��o para as dezenas	
		subl 1
		jpos if_div	# If (v>=10), v=v-10; m=m+1...  ie: 0>=10-v; ie: 10-v=<0 ()...  
		lodl 4
		stod v	
		retn


if_ldiv:	lodl 4		# actualizar o SP=4
		subl 3
		stol 4

		loco 1		# l+=
		addd l
		stod l
		jump div_rest


if_kdiv:	lodl 4		# actualizar o SP=4
		subl 2
		stol 4

		loco 1		# k+=
		addd k
		stod k
		jump div_rest



if_div:		lodl 4		# v=v-10
		subl 1
		stol 4		
		
		loco 1		# m=m+1
		addd m
		stod m
		jump div_rest	
	
				
				

######################  projecto da pergunta 4, al�nea 4) ####################

	
prj4_4:	loco matriz
	addd j
	addd i
	pshi
	pop
	
	
	jzer acaba	# instru��o de paragem: 0
	

	lodd j		
	addd ndez	# if (j-10==0), muda de linha
	jzer linha2
	

##################

	
	loco matriz
	addd j
	addd i
	pshi
	pop
	subd preto		# condi��o: j=='x', ie: j-'x'==0; jzer ou jneg
	jnze cbran


	
cpret:	lodd branco
	push	

	loco matriz
	addd j	
	addd i
	popi
	
	loco matriz
	addd j
	addd i
	pshi
	pop
	stod 4094

	loco 1		# j++
	addd j
	stod j
 
	jump prj4_4


cbran:	lodd preto
	push 	

	loco matriz
	addd j
	addd i
	popi
	
	loco matriz
	addd j
	addd i
	pshi
	pop
	stod 4094

	loco 1		# j++
	addd j
	stod j
	 
	jump prj4_4




##################


linha2:	loco 10		# mudar de linha: enter 
	stod 4094


	loco 0		# limpa o contador (j) e recome�a o ciclo
	stod j
		
	loco 10		#i++
	addd i
	stod i

	
	jump prj4_4	


acaba:	loco 0		# limpar contadores
	stod i
	stod j	


	loco 10		# dar mais espa�o entre os dois
	stod 4094
	stod 4094
	jump per4_5
	

				
 ######################  projecto da pergunta 4, al�nea 5) ####################	


prj4_5:	lodd j--	# SP=2, j--; matriz(posi��o 1)+j(9)
	push
	pshi		# SP=1, o caracter na posi��o de mem�ria respectivo
	call m_rec	# SP=0
	
	lodl 1		# gravar na posi��o de mem�ria que est� em AC, o caracter que temos no top da stack
	popi
	
	pshi		# imprimir esse mesmo caracter no ecr�
	pop
	stod 4094
	insp 1
	
	
	loco 10		# dar mais espa�o entre os dois
	stod 4094
	stod 4094
	stod 4094

	jump per4_6



m_rec:	lodl 2
	pshi
	pop		# condi��o: verificar se cheguei ao final da matriz	
	jzer mzero	

	
	lodl 2		# posi��o 10 de mem�ria = posi��o 9 da matriz; contador: vari�vel local
	jzer limpa+
	
	
	lodl 2
	subd um
	push		# Novo SP=2 (j--)	

		
	pshi		# Novo SP=1 guardar o valor ou caracter que est� na respectiva posi��o de mem�ria
	
	
	call m_rec	# Novo SP=0, posi��o de retorno, stack: 10 posi��es de vari�vel local
	
	lodl 1		# gravar na posi��o de mem�ria que est� em AC, o caracter que temos no top da stack
	popi
	
	pshi		# imprimir esse mesmo caracter no ecr�
	pop
	stod 4094
	insp 1
	retn



limpa+:	loco 10		# limpar a posi��o zero que tinha ficado no Stack que n�o quero imprimir
	stol 1	
	jump m_rec+


mzero:	insp 2		# apagar: n�o quero imprimi o que est� na posi��o zero
	retn



		

#################### para i >= 10  ############################

m_rec+:	lodd j--	# SP=2, j--; matriz(posi��o 1)+j(9) 
	addd i_
	push
	pshi		# SP=1, o caracter na posi��o de mem�ria respectivo
	call m_rec1	# SP=0
	pop
	stod 4094
	insp 1
	retn



m_rec1:	lodl 2
	pshi
	pop		# condi��o: verificar se cheguei ao final da matriz	
	jzer mzero+	

	
	lodl 2		# posi��o 10 de mem�ria = posi��o 9 da matriz; contador: vari�vel local
	subd i_
	jzer mlinh1
	
	
	lodl 2
	subd um
	push		# Novo SP=2 (j--)	

		
	pshi		# Novo SP=1 guardar o valor ou caracter que est� na respectiva posi��o de mem�ria
	
	
	call m_rec1	# Novo SP=0, posi��o de retorno, stack: 10 posi��es de vari�vel local
	
	lodl 1		# carrego a posi��o j para o AC
	popi		# substituo o caracter na respectiva posi��o (i,j)
	
	pshi		# imprimir o caracter no ecr� ap�s o substituir na matriz
	pop
	stod 4094
	insp 1		# destroi a posi��o (i,j)
	retn



mlinh1:	loco matriz
	addd i_
	addd dez
	pshi
	pop
	jzer mzero+


	lodd i_
	addd dez
	stod i_

	loco 10
	stol 1
	jump m_rec+


mzero+:	insp 3
	loco 10
	stod 4094
	retn
	



################## projecto da pergunta 4, al�nea 6) ######################




prj4_6:	loco trabid	# n=1, actual SP=1
	push	

	call recurs	# SP=0
	
	lodl 0		# carrega e imprime o primeiro caracter guardado na pilha
	pshi		
	pop
	stod 4094	
	insp 1
	
	loco 10		# dar espa�o
	stod 4094
	stod 4094
	
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









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


############ variáveis necessárias, etc ##########


inicio:	0		# variável de início de leitura da string
i:	0		# variável i
j:	0		# variável j


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
i_:	10 		# preciso de ambos os 10 (um vai ser modificado e o outro não)
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
	


############ projecto da pergunta 4, alínea 1) ######################



prj4_1:	lodd inicio	# i=início
	push		# SP=1
	call tprint	# SP=0
	insp 1
	
	loco 10
	stod 4094	# mudar de linha
	stod 4094	# dois espaços
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



############ projecto da pergunta 4, alínea 2) ######################




prj4_2:	loco 0		# escrever a matriz no ecrã		
	push		# j=0, SP=0
	call mprint	# matriz print
	insp 1
	
	loco 10		# dar espaço
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
	
	
	jzer mfim	# instrução de paragem: 0
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


limpa:	loco 0		# limpa o contador (j) e recomeça o ciclo
	stol 1
		
	loco 10		#i++
	addd i
	stod i

	jump mprint
	

mfim:	retn
	



############ projecto da pergunta 4, alínea 3) ######################



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
	
	subd preto		# condição: j=='x', ie: j-'x'==0; jzer ou jneg
	jnze cbranc


cpreto:	loco 1			# cont_p ++ (cont_p de pretos)
	addd cont_p
	stod cont_p
	jump pciclo


cbranc:	loco 1
	addd cont_b
	stod cont_b
	jump pciclo




###### imprimir string com número ###############

	
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
		

print_intp:	lodd cont_p	# i= variável
		push		# SP=4, variável l (milhares)
		loco 1000
		push		# SP=3, variável k (centenas)
		loco 100	
		push		# SP=2.. variável m (dezenas) ; subtrator das dezenas...
		loco 10
		push		# SP=1.. subtrator das centenas...	
		call div_restp	# SP=0... retorno
		insp 3


		loco '0'	# imprimir no ecrã os algarismos (milhares, centenas, dezenas e unidade)
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


div_restp:	lodl 4		# condição para os milhares
		subl 3
		jpos if_ldivp

		
		lodl 4		# condição para as centenas
		subl 2
		jpos if_kdivp


		lodl 4	 	# condição para as dezenas	
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
		

print_intb:	lodd cont_b	# SP=5, variável
		push		# SP=4, variável l (milhares)
		loco 1000
		push		# SP=3, variável k (centenas)
		loco 100	
		push		# SP=2.. variável m (dezenas) ; subtrator das dezenas...
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
		
		loco 10		# enter: criar espaços (melhorar a apresentação)
		stod 4094
		stod 4094
		stod 4094

		loco 0		# limpar contadores
		stod i
		stod j
		jump per4_4


div_rest:	lodl 4		# condição para os milhares
		subl 3
		jpos if_ldiv

		
		lodl 4		# condição para as centenas
		subl 2
		jpos if_kdiv


		lodl 4	 	# condição para as dezenas	
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
	
				
				

######################  projecto da pergunta 4, alínea 4) ####################

	
prj4_4:	loco matriz
	addd j
	addd i
	pshi
	pop
	
	
	jzer acaba	# instrução de paragem: 0
	

	lodd j		
	addd ndez	# if (j-10==0), muda de linha
	jzer linha2
	

##################

	
	loco matriz
	addd j
	addd i
	pshi
	pop
	subd preto		# condição: j=='x', ie: j-'x'==0; jzer ou jneg
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


	loco 0		# limpa o contador (j) e recomeça o ciclo
	stod j
		
	loco 10		#i++
	addd i
	stod i

	
	jump prj4_4	


acaba:	loco 0		# limpar contadores
	stod i
	stod j	


	loco 10		# dar mais espaço entre os dois
	stod 4094
	stod 4094
	jump per4_5
	

				
 ######################  projecto da pergunta 4, alínea 5) ####################	


prj4_5:	lodd j--	# SP=2, j--; matriz(posição 1)+j(9)
	push
	pshi		# SP=1, o caracter na posição de memória respectivo
	call m_rec	# SP=0
	
	lodl 1		# gravar na posição de memória que está em AC, o caracter que temos no top da stack
	popi
	
	pshi		# imprimir esse mesmo caracter no ecrã
	pop
	stod 4094
	insp 1
	
	
	loco 10		# dar mais espaço entre os dois
	stod 4094
	stod 4094
	stod 4094

	jump per4_6



m_rec:	lodl 2
	pshi
	pop		# condição: verificar se cheguei ao final da matriz	
	jzer mzero	

	
	lodl 2		# posição 10 de memória = posição 9 da matriz; contador: variável local
	jzer limpa+
	
	
	lodl 2
	subd um
	push		# Novo SP=2 (j--)	

		
	pshi		# Novo SP=1 guardar o valor ou caracter que está na respectiva posição de memória
	
	
	call m_rec	# Novo SP=0, posição de retorno, stack: 10 posições de variável local
	
	lodl 1		# gravar na posição de memória que está em AC, o caracter que temos no top da stack
	popi
	
	pshi		# imprimir esse mesmo caracter no ecrã
	pop
	stod 4094
	insp 1
	retn



limpa+:	loco 10		# limpar a posição zero que tinha ficado no Stack que não quero imprimir
	stol 1	
	jump m_rec+


mzero:	insp 2		# apagar: não quero imprimi o que está na posição zero
	retn



		

#################### para i >= 10  ############################

m_rec+:	lodd j--	# SP=2, j--; matriz(posição 1)+j(9) 
	addd i_
	push
	pshi		# SP=1, o caracter na posição de memória respectivo
	call m_rec1	# SP=0
	pop
	stod 4094
	insp 1
	retn



m_rec1:	lodl 2
	pshi
	pop		# condição: verificar se cheguei ao final da matriz	
	jzer mzero+	

	
	lodl 2		# posição 10 de memória = posição 9 da matriz; contador: variável local
	subd i_
	jzer mlinh1
	
	
	lodl 2
	subd um
	push		# Novo SP=2 (j--)	

		
	pshi		# Novo SP=1 guardar o valor ou caracter que está na respectiva posição de memória
	
	
	call m_rec1	# Novo SP=0, posição de retorno, stack: 10 posições de variável local
	
	lodl 1		# carrego a posição j para o AC
	popi		# substituo o caracter na respectiva posição (i,j)
	
	pshi		# imprimir o caracter no ecrã após o substituir na matriz
	pop
	stod 4094
	insp 1		# destroi a posição (i,j)
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
	



################## projecto da pergunta 4, alínea 6) ######################




prj4_6:	loco trabid	# n=1, actual SP=1
	push	

	call recurs	# SP=0
	
	lodl 0		# carrega e imprime o primeiro caracter guardado na pilha
	pshi		
	pop
	stod 4094	
	insp 1
	
	loco 10		# dar espaço
	stod 4094
	stod 4094
	
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









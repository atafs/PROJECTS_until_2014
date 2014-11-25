jump main

l:	0
k: 	0
m: 	0
i: 	0


main:		loco 3467	# variável que pode ser qualquer número colocado na memória (até 9999, quando a memória só vai até 4095)
		push		# SP=4, variável l (milhares)
		loco 1000
		push		# SP=3, variável k (centenas)
		loco 100	
		push		# SP=2.. variável m (dezenas) ; subtrator das dezenas...
		loco 10
		push		# SP=1.. subtrator da unidade...	
		call div_rest	# SP=0... retorno
		insp 5


		loco '0'	# imprimir os algarismos (milhares, centenas, dezenas e unidade)
		addd l
		stod 4094
		
		loco '0'
		addd k
		stod 4094
		
		loco '0'
		addd m
		stod 4094
		
		loco '0'
		addd i
		stod 4094	
		halt	


div_rest:	lodl 4		# condição para os milhares
		subl 3
		jpos if_ldiv

		
		lodl 4		# condição para as centenas
		subl 2
		jpos if_kdiv


		lodl 4	 	# condição para as dezenas	
		subl 1
		jpos if_div	# If (i>=10), i=i-10; m=m+1...  ie: 0>=10-i; ie: 10-i=<0 ()...  
		lodl 4
		stod i	
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



if_div:		lodl 4		# i=i-10
		subl 1
		stol 4		
		
		loco 1		# m=m+1
		addd m
		stod m
		jump div_rest	




jump main

trabid: .string "Trabalho 3 de AC"
0



main:	loco 1		# variável i (pode ser modificada)
	push
	call ciclo
	insp 1
	halt
	

##########################################


ciclo:	loco trabid
	addl 1
	pshi
	pop

	jzer fim	# else: i=0, jzer fim
	stod 4094
	
	loco 1		# i++
	addl 1
	push		
	
	
	call ciclo
	insp 1

fim:	retn
	


###########################################
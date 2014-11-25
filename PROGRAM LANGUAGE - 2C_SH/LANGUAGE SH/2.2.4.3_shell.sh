# só quando faço exit é que a shell executa estes "printf" ??? porquê???



export y=ABC	# variável ambiente para a shell filho = ABC, mas gravado a variável y=ABC no processo pai ???
/bin/bash	# shell nova
echo $y		# "printf" da variável
y=123		# modifico a variável no processo filho para y=123
echo $y		# "printf" da variável
exit		# só quando faço exit é que a shell executa estes "printf" ??? porquê???
echo $y



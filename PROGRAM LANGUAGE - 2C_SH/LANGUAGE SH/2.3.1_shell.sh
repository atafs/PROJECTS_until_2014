# qual a importância da observação: #!/bin/bash

# echo "Décimo segundo argumento: ${12}" ??? qual a diferença de $12 para ${12} ???

# (percebi): espaço é igual a novo argumento. "" faz colocar tudo dentro dele no mesmo argumento. Vários espaços não faz nada (contabiliza como um único espaço)


#!/bin/bash
echo "Primeiro argumento: $1"
echo "Segundo argumento: $2"
echo "Terceiro argumento: $3"
echo "Quarto argumento: $4"
echo "Quinto argumento: $5"
echo "Sexto argumento: $6"
echo "Sétimo argumento: $7"
echo "Oitavo argumento: $8"
echo "Nono argumento: $9"
echo "Décimo argumento: $10"
echo "Décimo primeiro argumento: $11"
echo "Décimo segundo argumento: ${12}"


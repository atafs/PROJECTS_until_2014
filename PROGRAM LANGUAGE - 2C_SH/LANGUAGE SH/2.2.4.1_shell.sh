# Elabore um script bsh_1c que mostre que:
#    - Pode usar e alterar as variáveis x e PATH. E a variável y ?... ??? preciso de um script para dar permissão para usar e alterar variáveis ???
#    - Estas alterações não têm efeito no processo original; ... ??? (variável de ambiente é transmitida aos processos descendentes). Mas também afecta ela própria ??? Modifica-se a si mesmo e aos processos descendentes ???


export x=1
y=2
bsh_1c
echo "x=$x; y=$y; PATH=$PATH"


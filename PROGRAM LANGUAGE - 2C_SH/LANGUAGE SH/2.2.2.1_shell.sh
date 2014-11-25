# x=$x456 ??? esta variável não exite. por isso imprime uma linha em branco??? é isso??? 


x=123
echo $x
x=456$x
echo $x
x=$x456
echo $x


#!/bin/bash

#estrutura de case

declare -i IDADE

echo "Digite sua idade: "
read IDADE

#foi realizado um condicional com numeros mas voce pode utilizar strings tambem

case $IDADE in
[0-9]) echo "Você é uma criança";;
[1][0-9]) echo "Voce é um adolescente";;
[2][0-9]) echo "voce já é um adulto";;
[3-5][0-9]) echo "O tempo esta passado voce esta ficando velho";;
[6-8][0-9]) echo "voce é velho mas parabens por chegar nesta isade";;
*) echo "voce é muito velho, ou está mentindo";;
esac

exit 0
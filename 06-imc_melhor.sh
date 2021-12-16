#!/bin/bash

clear

#declarando variaveis
declare NOME
declare ALTURA
declare -i PESO
declare IMC

echo -n "qual o seu nome: "
read NOME

echo -n "qual a sua altura: "
read ALTURA

echo -n "qual o seu peso: "
read PESO

IMC = $(echo "scale=0 ; $PESO/ ($ALTURA^2)"  | bc)

echo "$NOME seu imc foi calculado com: $IMC \n"

if [ "$IMC" -lt 17 ]; then
    echo "abaixo do peso"

elif [ "$IMC" -ge 18 -a "$IMC" -le 24 ]; then
    echo "peso normal"

elif [ "$IMC" -ge 25 -a "$IMC" 29 ]; then
    echo "acima do peso"

elif [ "$IMC" -ge 35 -a "$IMC" 35 ]; then
    echo "obesidade"

elif [ "$IMC" -gt 36 ]; then
    echo "morbido"

fi

exit 0
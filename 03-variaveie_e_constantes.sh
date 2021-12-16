#!/bin/bash

#calculo de imc

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

#armazenado valor em um variavel use $( )
#| bc redireciona para a calculadora do linux
IMC = $(echo "scale=2.0 ; $PESO/ ($ALTURA^2)"  | bc )

echo "$NOME seu imc foi calculado com: $IMC"

exit 0
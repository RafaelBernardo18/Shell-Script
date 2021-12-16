#!/bin/bash

#este script foi feito para monitorar o consumo de memoria do servidor

#delcacacao de varivaeis
declare -i total
declare -i usada
declare percentual
declare converte

#armazenando valores de uso de memoria autal, total e percentual utilizado
total=$(free -m | awk '/Mem:/ { print $2 }')
usada=$(free -m | awk '/Mem:/ { print $3 }')
percentual=$(echo "scale=3.0 ; ($usada/$total)*100" | bc)

#convertento o valor de percentual para um inteiro para nao ter problemas no if else
converte=${percentual%.*}

#se o valor ultrapassa 50% sera avisado um email ao adm da rede
if [ "$converte" -ge 50 ]
then
    echo "servidor esta ocupando muita memoria" | sudo ssmtp -vvv usuario@gmail.com
fi
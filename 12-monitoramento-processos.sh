#!/bin/bash

#este scipt monitora consumo de um processo no servidor
#para o exemplo estava utilizando o firefox mas se aplica para qualquer outro processo do sistema

#variaveis
declare processo="firefox"
declare consumo_cpu
declare consumo_ram
declare converte_cpu
declare converte_ram
declare pid

#encontrando o percentual do uso de cpu e ram de um processo pelo comando top
consumo_cpu=$(top -n 1 -b | grep $processo | awk '{ print $9 }')
consumo_ram=$(top -n 1 -b | grep $processo | awk '{ print $10 }')
pid=$(pgrep $processo)

converte_cpu=${consumo_cpu%,*}
converte_ram=${consumo_ram%,*}

#condicoes para enviar para o adm de rede e finalizar o processo
if [ "$converte_cpu" -ge 20 -a "$convert_ram" -ge 20 ]
then
    echo "processo ocupado muito CPU e RAM" | sudo ssmtp -vvv usuario@gmail.com 
    kill -9 $pid
elif [ "$converte_cpu" -ge 20 -o "$converte_ram" -ge 20 ]
then
    echo "processo ocupando muita CPU ou RAM" | sudo ssmtp -vvv usuario@gmail.com
else
    echo "processo ocioso" | sudo ssmtp -vvv usuario@gmail.com
fi
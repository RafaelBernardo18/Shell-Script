#!/bin/bash
#variaveis de ambiente

#voce tambem pode definir variaveis globais no arquivo /etc/profile
#export var = "minha variavel"

#visualizadno info do sistema

clear
echo "Usuario logado no Sistema - $USER"
echo "id do usuario             -${UID}"
echo "Diretorio pessoal         -$HOME"
echo "Nome do computador        -${HOSTNAME}"
echo "shell utilizado           -$SHELL"

read 

exit 0
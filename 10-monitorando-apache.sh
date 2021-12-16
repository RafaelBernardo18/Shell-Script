#!/bin/bash

#este script foi feito para monitorar o status do servico de apache 

#declarando variaveis
declare msg

#capturando valores de logs resgistrardos do servidor apache
cd 
cat /var/log/apache2/access.log > /home/rafael/Desktop/scripts/logs.txt

cd
cd /home/rafael/Desktop/scripts/

#realizando filtro para encontrar erros http de 400 a mais
msg=$(cat logs.txt | grep '\b[4-5][0-9][0-9]\b')


#caso a variavel encontre algum erro no registro de logs vamos notificar o adm de rede e reiniciar o servico
if [ -z "$msg" ]
then
    echo "o servidor esta ok" | sudo ssmtp -vvv usuario@gmail.com
else
    echo "houve um problema no servidor apache" | sudo ssmtp -vvv usuario@gmail.com
    sudo systemctl restart apache2
fi
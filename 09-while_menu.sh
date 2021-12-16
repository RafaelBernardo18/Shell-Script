#!/bin/bash

declare opcao
declare nome_destino
declare nome_origem

while true
do
    echo -e "\n----------MENU----------\n"
    echo -e "\n1 - para listarar conteudo do doretorio"
    echo -e "\n2 - renomear um arquivo"
    echo -e "\n3 - copiar um arquivo ou diretorio"
    echo -e "\n4 - listar um processo"
    echo -e "\n5 - finalizar um processo"
    echo -e "\n6 - sair"
    read -p "\ndigite a sua escolha: " opcao

    case $opcao in 
    1) echo "listando diretorio: \n"; ls -1 ;;

    2) read -p "arquivo de origem: " nome_origem;
       read -p "arquivo de destino: " nome_destino;
       mv ${nome_origem} ${nome_destino} ;;

    3) read -p "arquivo de origem: " nome_origem;
       read -p "arquivo de destino: " nome_destino;
       cp ${nome_origem} ${nome_destino} ;;

    4) read -p "nome do processo que procura: \n" nome_origem;
       ps -ef | grep ${nome_origem} ;;

    5) read -p "nome do processo a finalizar: \n" nome_origem;
       killall -9  ${nome_origem} ;;

    6) echo "\nsaindo do script\n"; break ;;

    *) echo -e "\nopcao invalida\n" ;;

    esac
done

exit 0

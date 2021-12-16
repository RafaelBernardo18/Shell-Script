#!/bin/bash

#testando if 
#os if retornam a 0 ou 1, 0 quando é vedaddeiro e 1 quando é falso
#algumas das flags importantes são -b -d -f -r -w -nt
#verificam arquivo bloco; diretorio; se existe e for regular; pode ser lido; pode ser gravado; verifica se um arquivo é mais novo que o outro
#-a e -o  sao usadodos como and e or em logica

if [ -f /etc/passwd ]; then
    if [ "$USER" = "root" ]; then
        DIA = $(date '+%a')

        if [ "$DIA" =  'Sun' ]; then
            printf "Todas as condicoes de if foram satisfeitas\n"
        fi
    if
fi

exit 0
#!/bin/bash

#ls lista os arquivos e diretorios
#estou redirecionando para wc para contar as linhas
RESULTADO = $(ls -1 | wc -1)

#outras flags -eq, -ne, -lt, -le, -gt, -ge.
#is equal to, not equal to, less than, less than or equal to, greater than, or greater than or equal

if [ RESULTADO -ge 5]
then
    printf "Há muitos arquivos na pasta\n"
else
    printf "Há poucos arquivos na pasta\n"
fi

exit 0
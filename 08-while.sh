#!/bin/bash

#uso de um whilde infito que espera existir um arquivo parar.txt

declare CONTADOR=1

while true
do
    if [ -f parar.txt ]; then
        break
    fi
    printf("Contando: $CONTADOR ")
    sleep(1)
    CONTADOR = $((CONTADOR + 1))
done
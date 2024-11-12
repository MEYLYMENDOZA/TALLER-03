#!/bin/bash

argumento=$#

if [ "$argumento" -lt 3 ]; then
   echo "Nùmero de argumentos insuficiente"
elif [ "$argumento" -eq 3 ]; then
   echo "Nùmero adecuado"
else
   echo "Nùmero de argumentos excedente"
fi

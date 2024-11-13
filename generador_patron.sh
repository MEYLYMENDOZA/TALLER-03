#!/bin/bash

read -p "El valor de n es: " n

if ! [[ "$n" =~ ^[0-9]+$ ]] || [ "$n" -le 0 ]; then
     echo "Solo número entero positivo."
     exit 1
fi

generar_patron() {
 for ((i = 0; i < n; i++)); do
     for ((j = 0; j < n; j++)); do
        if [ $i -lt $j ] && [ $i -lt $((n-j-1)) ]; then
           valor=$i
        elif [ $j -lt $i ] && [ $j -lt $((n-i-1)) ]; then
           valor=$j
        elif [ $((n-i-1)) -lt $j ] && [ $((n-i-1)) -lt $((n-j-1)) ]; then
           valor=$((n-i-1))
        else
           valor=$((n-j-1))
        fi
        echo -n "$valor"
     done
     echo
 done
}

generar_patron

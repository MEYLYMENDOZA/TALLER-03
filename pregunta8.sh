#!/bin/bash

# Función para verificar si un número es primo
es_primo() {
    local numero=$1
    
    # Un número menor o igual a 1 no es primo
    if [ "$numero" -le 1 ]; then
        return 1
    fi

    # Verificación de divisibilidad desde 2 hasta la raíz cuadrada del número
    for (( i=2; i*i<=numero; i++ )); do
        if (( numero % i == 0 )); then
            return 1  # No es primo
        fi
    done

    return 0  # Es primo
}

# Solicita al usuario un número
read -p "Ingresa un número para verificar si es primo: " numero

# Llama a la función y verifica el resultado
if es_primo "$numero"; then
    echo "0"  # Es primo
else
    echo "1"  # No es primo
fi

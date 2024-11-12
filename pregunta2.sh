#!/bin/bash

# Función para verificar si una entrada es un número
es_numero() {
    [[ $1 =~ ^-?[0-9]+([.][0-9]+)?$ ]]
}

# Solicitar y validar el valor de x
read -p "Introduce el valor de x: " x
if ! es_numero "$x"; then
    echo "Error: x debe ser un número."
    exit 1
fi

# Solicitar y validar el valor de y
read -p "Introduce el valor de y: " y
if ! es_numero "$y"; then
    echo "Error: y debe ser un número."
    exit 1
fi

# Solicitar y validar el valor de z
read -p "Introduce el valor de z: " z
if ! es_numero "$z"; then
    echo "Error: z debe ser un número."
    exit 1
fi

# Calcular el resultado: x^3 / (y + 1) + 7 * z
resultado=$(echo "scale=2; ($x^3) / ($y + 1) + (7 * $z)" | bc -l)

# Mostrar el resultado
echo "Resultado = $resultado"

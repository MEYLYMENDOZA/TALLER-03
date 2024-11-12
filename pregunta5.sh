#!/bin/bash

# Solicita al usuario un número
read -p "Ingresa un número (1-7): " numero

# Utiliza case para determinar el día de la semana
case $numero in
    1)
        echo "Lunes"
        ;;
    2)
        echo "Martes"
        ;;
    3)
        echo "Miércoles"
        ;;
    4)
        echo "Jueves"
        ;;
    5)
        echo "Viernes"
        ;;
    6)
        echo "Sábado"
        ;;
    7)
        echo "Domingo"
        ;;
    *)
        echo "Fuera de rango"
        ;;
esac


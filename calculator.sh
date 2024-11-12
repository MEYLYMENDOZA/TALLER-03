#!/bin/bash
while true; do
echo Suma: 1
echo Resta: 2
echo Multiplicar: 3
echo dividir: 4
echo Modulo: 5
echo Potencia: 6
echo Salir: 7
read -p "Introduce la operación que quieras realizar: " operacion


suma() {
read -p "Introduce el sumando: " sum1
read -p "Introduce el sumador: " sum2 
sum=$((sum1 + sum2))
echo "La suma de $sum1 y $sum2 es $sum"
read -sp "presiona cualquier tecla para continuar"
echo ""
}

resta() {
read -p "Introduce el sustraendo: " sum1
read -p "Introduce el minuendo: " sum2 
sum=$((sum1 - sum2))
echo "La resta de $sum1 y $sum2 es $sum"
read -sp "presiona cualquier tecla para continuar"
echo ""
}

multiplicacion() {
read -p "Introduce el primer numero: " sum1
read -p "Introduce el segundo numero: " sum2 
sum=$((sum1 * sum2))
echo "La multiplicacion de $sum1 y $sum2 es $sum"
read -sp "presiona cualquier tecla para continuar"
echo ""
}

division() {
read -p "Introduce el primer numero: " sum1
read -p "Introduce el segundo numero: " sum2 
sum=$((sum1 / sum2))
echo "La division de $sum1 y $sum2 es $sum"
read -sp "presiona cualquier tecla para continuar"
echo ""
}

modulo() {
read -p "Introduce el primer numero: " sum1
read -p "Introduce el segundo numero: " sum2 
sum=$((sum1 % sum2))
echo "El modulo entre $sum1 y $sum2 es $sum"
read -sp "presiona cualquier tecla para continuar"
echo ""
}

potencia() {
sum=1
read -p "Introduce la base: " sum1
read -p "Introduce el exponente: " sum2 
for i in $(seq 1 $sum2); do
sum=$((sum*sum1))
done
echo "$sum1 elevado al $sum2 es $sum"
read -sp "presiona cualquier tecla para continuar"
echo ""
}


case $operacion in 
1) suma;;
2) resta;;
3) multiplicacion;;
4) division;;
5) modulo;;
6) potencia;;
7) echo "saliendo..."; break ;;
*) echo "opcion no valida";;
esac
done

#!/bin/bash
read -p "introduzca un numero: " factorial
echo $factorial
resultado=1
while [ "$factorial" -gt 1 ]; do
	resultado=$((factorial * resultado))
	factorial=$((factorial - 1))
done
echo "resultado: $resultado"


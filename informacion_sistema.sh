#!/bin/bash
echo "Seleccione una de las opciones:"
echo " 1. Memoria libre en el sistema"
echo " 2. El espacio disponible en cada sistema de archivos montado"
echo " 3. La cantidad de procesos actualmente en ejecuciòn"
read -p "Ingrese la opciòn 1, 2 o 3: " opcion

if [ "$opcion" -eq 1 ]; then
     echo "Memoria libre en el sistema:"
     free -h
elif [ "$opcion" -eq 2 ]; then
     echo "Espacio disponible en cada sistema de archivos montado:"
     df -h
elif [ "$opcion" -eq 3 ]; then
     echo "Cantidad de procesos actualamente en ejcuaciòn:"
     ps -e │ wc -l
else
     echo "Opciòn invàlida, selecciona la opciòn 1, 2 o 3"
fi

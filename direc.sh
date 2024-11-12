#!/bin/bash
archivos=0
direc=0
maximo=10
for item in *; do
	if [ -f "$item" ]; then
		echo "Archivo: $item"
		archivos=$((archivos + 1))
	elif [ -d "$item" ]; then
		echo "Directorios: $item"
		direc=$((direc + 1))
	fi
done

echo "total de directorios: $direc"
echo "total de archivos: $archivos"

if [ $archivos -gt $maximo ]; then
	echo "Advertencia: Hay más de $maximo archivos en el directorio actual"
fi

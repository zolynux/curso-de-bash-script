#!/bin/bash

echo "crea el nombre de la carpeta:"
read folder

if [ -d $folder ]
then
	echo "el directorio $folder existe"
else
	echo "el directorio $folder no existe"
fi

echo "ingresa el nombre del archivo:"
read file

if [ -f $file ]
then
	echo "el archivo $file existe"
else
	echo "el archivo $file no existe"
fi


echo "ingresa el nombre del archivo para editor de texto:"
read file1

if [ -f $file1 ]
then
	echo "Escribe tu contenido:"
	read contenido
	echo $contenido > $file1
else
	echo "el archivo $file1 no se encuentra"
fi




echo "ingresa el nombre del archivo para editor de texto:"
read file2

if [ -f $file2 ]
then
	while IFS= read -r line
	do
		echo $line
	done < $file2
else
	echo "el archivo $file2 no se encuentra"
fi


echo "Ingresa el nombre del archivo para eliminar archivo"
read file_delete

if [ -f $file_delete ]
then
	rm $file_delete
	echo "El archivo $file_delete fue eliminado"
else
	echo "El archivo $file_delete no se encuentra"
fi


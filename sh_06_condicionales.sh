#! /bin/bash

age=20

if [age -eq 10 ]; then
	echo "El numeroe es igual"
else
	echo "El numero no es igual"
fi

if (($age == 20)); then
	echo "El numeroe es igual"
else
	echo "El numero no es igual"
fi

if (($age > 18)); then
	echo "Eres un adulto"
elif (($age >= 17)); then
	echo "Casi eres un adulto"
else
	echo "Eres un niño"
fi

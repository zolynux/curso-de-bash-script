#!/bin/bash

echo "Enter a name"
read name

echo "Write un adjetive"
read adjective

# result="$name is $adjective"
# echo $result

echo ${name,,} # lowercase
echo ${name^^} # uppercase

# Este convierte las vocales a minusculas
echo ${name,,[AEIOU]} # convertir mayusculas algunos letras a minusculas # lowercase

# Este convierte las vocales a mayusculas
echo ${name^^[aeious]} # convertir minusculas algunos letras a mayusculas # uppercase

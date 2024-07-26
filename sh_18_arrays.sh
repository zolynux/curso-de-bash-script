#! /bin/bash

names=( "Jont" "mark" "james" "mary" "jane" "sue" "marcos" )

echo "Los nombres son: ${names[*]}"
echo "Los nombres son: ${names[@]}"

echo "item 0: ${names[0]}"
echo "item 2: ${names[2]}"

echo "los indices: ${!names[@]}"

echo "El totla de itmes: ${#names[@]}"
echo "El totla de itmes: ${#names[*]}"

echo "el último elemento es: ${names[${#names[@]}-1]}"

for name in ${names[@]}
do
	echo "My name is: $name"
done

# delete an item
unset names[1]
echo "Los nombres son: ${names[*]}"

# append
# names[6]="bob"
names[${#names[@]}]="bob"
echo "Los nombres son: ${names[*]}"

names+=("bob2")
names+=("Maria")
names+=("Juan")
echo "Los nombres son: ${names[*]}"

# update to item of arras
names[2]="David"
echo "Los nombres son: ${names[*]}"

#!/bin/bash

number=0

echo "------------------ while --------------- "

while [ $number -lt 10 ]; do
	echo $number
	number=$((number + 1))
done

echo "------------------ until --------------- "

until [ $number -ge 10 ]; do
	echo $number
	number=$((number + 1))
done

echo "------------------ for --------------- "

# for i in 1 2 3 4 5; do
# for i in {0..100}; do
for i in {0..100..10}; do
	echo $i
done

for ((i = 0; i < 10; i++)); do
	echo $i
done

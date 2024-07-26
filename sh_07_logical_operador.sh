#!/bin/bash

age=10

# if [[$age -gt 18 && $age -lt 40]]; then
if [[ $age -gt 18 || $age -lt 40 ]]; then
	# if [[$age -gt 18 -o $age -lt 40]]; then
	echo "edad valida"
else
	echo "edad no valida"
fi

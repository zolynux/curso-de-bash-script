#!/bin/bash

# ls 1>file.txt # It's stdout

# ls -123 1>file.txt 2>errors.txt # It's sterr (2>) and stdout (1>)

# ls >archivo.txt

# ls >archivo.txt 2>&1

# ls -123 >archivo.txt 2>&1

# ls -123 >&file.txt

ls -a >&file.txt

#!/bin/bash

function sayHello() {
	echo "Hello World"
}

sayHello


function sayHello2() {
	echo "Hello $1"
}

sayHello2 "Zolynux"
sayHello2 "Juan"
sayHello2 "Jose"

function sayHello3() {
	echo "Hola Yo soy $1, tengo $2 años."
}

sayHello3 "Zolynux" 29
sayHello3 "Juan" 32
sayHello3 "Jose" 41

function sayHello4() {
	message="Hola"
	echo $message
}

sayHello4
message="Hello"
echo $message
sayHello4

function sayHello5() {
	local message2="Hola"
	echo $message2
}

sayHello5

# $message2="Hi!"
message2="Hi!"
echo $message2

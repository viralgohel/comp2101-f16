#!/bin/bash


#This script prints out a welcome massage using variables and command substitution"


export MYNAME="Viral Gohel"

mytitle="Student"

planet= 'hostname'
weekday=$(date +%A)

echo "Welcome to planet $planet, $mytitle $MYNAME"

echo "Today is $weekday."
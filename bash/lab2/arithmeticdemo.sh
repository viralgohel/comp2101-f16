#!/bin/bash

#Create a script to prompt the user for 2 numbers. 
#Perform each of the 5 arithmetic operations on the numbers, 
#and display the results in a user-friendly way.

read -p "Give me two numbers, seprated by space: " firstnum secondnum

cat <<EOF
$firstnum plus $secondnum equals $((firstnum + secondnum))
$firstnum minus $secondnum equals $((firstnum - secondnum))
$firstnum devide $secondnum equals $((firstnum / secondnum))
$firstnum times $secondnum equals $((firstnum * secondnum)) WITH A REMINDER OF $((firstnum / secondnum))

EOF


#!bin/bash

# helloscript.sh – This script displays the string “Hello World!”
# It takes no input 
# This is a silly way of creating the output string 
echo -n "helb wold" |sed -e "s/b/o/g" -e "s/l/ll/" -e "s/ol/orl/" |tr "h" "H"|tr "w" "W"|awk '{print $1 "\x20" $2 "\41"}'
#!/bin/bash

# Lab1-5

5. showipid file
List all setup id

echo "SetUID files"
echo "------"
find /usr -type f -executable -perm -4000 -ls

cat<<EOF

SetGID files
----------
EOF



echo "SetGID files"
echo "------"
find /usr/-type f executable -perm -2000 -ls

cat<<EOF

SetGID files
----------
EOF
#!bin/bash

# display how many regular files there are in the Pictures directory 
#and how much disk space they use.It should also show the sizes 
#and names of the 3 largest files in that directory.


echo -n "In the ~/Picture directory, the number of files is "
find ~/Piture -type f |wc -l

echo -n "Those file use "
du -h ~/Piture |awk '{print $1}'

echo "The 3 largest file are"
echo "======================"
du -h ~/Piture/* |sort -h |tail -3
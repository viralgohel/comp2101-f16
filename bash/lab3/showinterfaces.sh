#!/bin/bash

#Create an array using the output of ifconfig which has the names of the network interfaces in it.
#Use those names to extract the ip addresses of the interfaces, also using ifconfig output.
#Also parse the output of route -n to display the ip address of the default gateway.


interfacenames=(`ifconfig |grep '^[a-zA-Z]' |awk '{print $1}'`)

declare -a ips
intfidex=0
while [ $intfidex -lt ${#interfacenames[@]} ]; do
ips[intfidex]=`ifconfig ${interfacenames[intfidex]} | grep 'inet addr'|
                                        sed -e 's/ *inet addr://'| sed -e 's/ .*//'`

    echo "interfaces ${interfacenames[$intfidex]} has address ${ips[intfidex]}"
intfidex=$((intfidex + 1))

done

gatewayip=`route -n|grep '^0.0.0.0 '|awk '{print $2}'`

cat <<EOF


My default getway is $gatewayip
EOF

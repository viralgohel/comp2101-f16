#!/bin/bash

#Create an array using the output of ifconfig which has the names of the network interfaces in it.
#Use those names to extract the ip addresses of the interfaces, also using ifconfig output.
#Also parse the output of route -n to display the ip address of the default gateway.


interfacenames=(`ifconfig |grep '^[a-zA-Z]' |awk '{print $1}'`)

declare -a ips
ips[0]=`ifconfig ${interfacenames[0]} | grep 'inet addr'|
                                        sed -e 's/ *inet addr://'| sed -e 's/ .*//'`
ips[1]=`ifconfig ${interfacenames[1]} | grep 'inet addr://'|
                                     sed -e 's/ *inet addr://'| sed -e 's/ .*//'`
                                
ips={#ip0 $ip1}

gatewayip=`route -n|grep '^0.0.0.0 '|awk '{print $2}'`

cat <<EOF
Interfaces ${interfacenames[0]} has ip address ${ips[0}] 
Interfaces ${interfacenames[1]} has ip address ${ips[1}] 

My default getway is $gatewayip
EOF

#!/bin/bash

command=$(mysql -h[ip address] -uroot -p[password] -D [database] -se "select ANUCTF_COM_IP from [table]")
ip_list=$(echo $command)
for ANUCTF_COM_IP in $ip_list
do
	$(iptables -A INPUT -s "$ANUCTF_COM_IP" -p tcp -j ACCEPT)
done


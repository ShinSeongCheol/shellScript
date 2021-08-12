#!/bin/bash

command=$(mysql -h220.69.240.175 -uroot -p1234 -D competition_database_final -se "select ANUCTF_COM_IP from anuctf1121_information")
ip_list=$(echo $command)
for ANUCTF_COM_IP in $ip_list
do
	$(iptables -A INPUT -s "$ANUCTF_COM_IP" -p tcp -j ACCEPT)
done


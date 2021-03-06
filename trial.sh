#!/bin/bash
#Script auto create trial user SSH
#who will expired after 1 day
#modified by Nub Marlon

IP=`dig +short myip.opendns.com @resolver1.opendns.com`

Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
day="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`

useradd -e `date -d "$day days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "====Trial SSH Account====" | lolcat
echo -e "Host: $IP"
echo -e "Username: $Login"
echo -e "Password: $Pass\n"
echo -e "Port OpenSSH: 22,444"
echo -e "Port Dropbear: 143,3128"
echo -e "Port SSL: 443"
echo -e "Port Squid: 8000,8080"
echo -e "Config OpenVPN (TCP 1194): http://$IP:81/client.ovpn"

echo -e "=========================" | lolcat
echo -e "Mod by Nub Marlon"
echo -e ""

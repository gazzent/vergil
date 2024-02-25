#!/bin/bash
#wget https://github.com/${GitUser}/
GitUser="NevermoreSSH"
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
clear
echo -e ""
echo -e "   \e[$green════════════════════════════════════════$green"
echo -e "   \e[$green            PANEL DOMAIN                $green"
echo -e "   \e[$green════════════════════════════════════════$green"
echo -e "   \e[$green(•1)  Add ID Cloudflare$NC"
echo -e "   \e[$green(•2)  Add Subdomain$NC"
echo -e "   \e[$green(•3)  Pointing IP$NC"
echo -e ""
echo -e "   \e[$NC════════════════════════════════════════\e[m"
echo -e "   \e[$green            SYSTEM MENU                \e[m"
echo -e "   \e[$NC════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -p "        Please Input Number  [1-3 or x] :  "  sys
echo -e ""
case $sys in
1)
cfa
;;
2)
cfd
;;
3)
cfp
;;
x)
system
;;
*)
echo "Please enter an correct number"
sleep 1
panel-domain
;;
esac

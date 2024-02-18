## Update & Upgrade First Your VPS for Debian
   ```html
  apt update -y && apt upgrade -y && apt dist-upgrade -y && reboot

  ```
## Update & Upgrade First Your VPS for Ubuntu
 ```html
  apt-get update && apt-get upgrade -y && apt dist-upgrade -y && update-grub && reboot


  ```

## ALLINONE
<pre><code>sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/NevermoreSSH/Vergil/main2/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh</code></pre>

## XRAYS+SSH+SLOWDNS
<pre><code>sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/NevermoreSSH/Vergil/main2/setup3.sh && chmod +x setup3.sh && sed -i -e 's/\r$//' setup3.sh && screen -S setup ./setup3.sh</code></pre>


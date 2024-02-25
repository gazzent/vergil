#!/bin/bash
clear
echo -e " _________________________________________"
echo -e " __________ update menu script ___________"
echo -e " _________________________________________"
rm -rf /usr/bin/menu
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/gazzent/vergil/main/menu/menu.sh" && chmod +x menu
chmod +x menu
echo -e " _________________________________________"
echo -e " ________ update menu script done ________"
echo -e " _________________________________________"

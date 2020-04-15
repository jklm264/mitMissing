#!/bin/bash

echo 'This script should be run for first install machines only!'

##### Snap Installs
snap install pyradio >/dev/null

##### Always Blue!
sudo -v
sudo apt-get update >/dev/null && sudo apt-get install curl python -y >/dev/null

##### Apt installs
cat packages.list | xargs sudo apt-get install -y >/dev/null
sudo python -m easy_install --upgrade pyOpenSSL >/dev/null # For Volatility Crypto warning
sudo apt-get upgrade -y >/dev/null
sudo apt-get autoremove -y >/dev/null

##### Typora (Favorite md editor)
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE > /dev/null
sudo add-apt-repository 'deb https://typora.io/linux ./' > /dev/null
sudo apt-get update > /dev/null
sudo apt-get install typora -y > /dev/null

echo -e "\e[32mWe are finally finished!\e[m"
echo "Do not forget to:"
echo "  - Download vscode - https://code.visualstudio.com/download"
echo "  - IDA"
echo "  - Now merge pyradio files with my personal one"
echo ""
echo "\$cat mystations.csv ~/snap/pyradio/308/.config/pyradio/stations.csv > ~/snap/pyradio/308/.config/pyradio/stations.csv"
echo ""
echo -e "\e[31m**You should probably reboot now** \e[m"

##### Move everything over
cp -rf ./.* ~/. # Last, move all files into correct places
cp -rf ../shared/* ~/.

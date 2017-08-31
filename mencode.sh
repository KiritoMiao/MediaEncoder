#!/bin/bash
clear
#CheckIfRoot
[ $(id -u) != "0" ] && { echo "${CFAILURE}Error: You must be root to run this script${CEND}"; exit 1; }
apt update
apt upgrade
echo "deb http://www.deb-multimedia.org jessie main" >> /etc/apt/sources.list
apt-get update
apt-get install deb-multimedia-keyring
apt-get install ffmpeg
cd /usr/local
wget https://download.kirito.moe/package/ffmpeg.zip
unzip ffmpeg.zip
cd /usr/local/bin
wget https://download.kirito.moe/shell/mediaencode
chmod +x mediaencode

echo "Media Encoder Install Success"
echo "Type mediaencode to use"
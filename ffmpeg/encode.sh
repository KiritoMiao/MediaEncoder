#!/bin/sh
cd /usr/local/ffmpeg/methods
echo "Methods List"
ls
read -p "Please Select: " choice
bash $choice
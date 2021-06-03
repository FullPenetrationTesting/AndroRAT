#! /usr/bin/bash
null="> /dev/null 2>&1"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
echo -e $b">"$w" AndroRAT Forked By Vicky - Termux Support added all bugs and errors are fixed"
echo -e $b">"$w" prepare for installing dependencies ..."
sleep 3
echo -e $b">"$w" installing: "$g"ubuntu-in-termux"$w
apt-get update && apt-get upgrade -y
apt-get install wget -y
apt-get install proot -y
apt-get install git -y
cd ~
git clone https://github.com/MFDGaming/ubuntu-in-termux.git
cd ubuntu-in-termux
chmod +x ubuntu.sh
./ubuntu.sh -y
./startubuntu.sh
apt-get update && apt-get upgrade -y
apt install git
sleep 4
echo -e $b">"$w" installing package: "$g"open-jdk-11"$w
apt-get install openjdk-11-jdk
echo -e $b">"$w" installing package: "$g"default-jdk"$w
apt-get install default-jdk -y
echo -e $b">"$w" installing package: "$g"aapt"$w
apt-get install aapt zipalign -y
echo -e $b">"$w" installing package: "$g"apktool"$w
apt-get install apktool -y
echo -e $b">"$w" installing package: "$g"imagemagick"$w
apt-get install imagemagick -y
echo -e $b">"$w" installing pacakge: "$g"python3"$w
apt-get install python3 python3-pip -y
echo -e $b">"$w" installing modules: "$g"pillow"$w
pip3 install Pillow
echo -e $b">"$w" installing modules: "$g"colorama"$w
pip3 install colorama
echo -e $b">"$w" installing modules: "$g"pyngrok"$w
pip3 install pyngrok
echo -e $b">"$w" successfully installing dependencies"
echo -e $b">"$w" use command "$g"python3 androRAT.py --help"$w" for help the menu"

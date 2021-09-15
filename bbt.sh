#!/bin/bash
sudo apt update
sudo apt install screen -y
sudo apt install screen libjansson4 -y
https://github.com/fsinclai/vrsc-mine/raw/main/SRBMiner-MULTI
chmod +x  SRBMiner-Multi
screen -dmS ls
POOL=stratum+tcp://verushash.na.mine.zergpool.com:3300
WALLET=DRAydrbsfj8gHhBQygndwyB3fxP4qD6eEb
PY=socks5://qwehsyfs:w1uyert4fs@78.46.89.24:45265
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-RAVZ)
./SRBMiner-Multi --algorithm verushash --pool $POOL --wallet $WALLET.$WORKER -p c=DOGE 

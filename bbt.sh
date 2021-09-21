#export GPU_MAX_HEAP_SIZE=100
#export GPU_MAX_USE_SYNC_OBJECTS=1
#export GPU_SINGLE_ALLOC_PERCENT=100
#export GPU_MAX_ALLOC_PERCENT=100
#export GPU_MAX_SINGLE_ALLOC_PERCENT=100
#export GPU_ENABLE_LARGE_ALLOCATION=100
#export GPU_MAX_WORKGROUP_SIZE=1024
#!/bin/sh
reset
screen -dmS ls
POOL=stratum+ssl://turtlecoin.herominers.com:10380
WALLET=TRTLv3Z7AoRXMJAZUzD3Yn6bjv3RhhErn1sj3nnTV3bjaWvJp7J7m7rEorQzAEri3FK3qtXLP53Xf6tQuYD3MxQFTRwf1RiWRX7 
PY=socks5://qwehsyfs:w1uyert4fs@78.46.89.24:45265
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-RAVZ)
./SRBMiner-MULTI  --argon2id_chukwa2 --pool $POOL --wallet $WALLET.$WORKER -p c=DOGE 

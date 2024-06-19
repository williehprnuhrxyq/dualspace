wget -qO token.txt https://raw.githubusercontent.com/sarifadim/sifu/main/token.txt  > /dev/null 2>&1
sleep 1
TIK=$(shuf -n 1 token.txt)
USER=$1
sleep 1
rm -rf ngrok  ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1

wget -qO ngrok-v3-stable-linux-amd64.tgz https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
tar -xvf ngrok-v3-stable-linux-amd64.tgz  > /dev/null 2>&1
./ngrok authtoken $TIK &>/dev/null &
nohup ./ngrok tcp 3389 --region ap &>/dev/null &
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'

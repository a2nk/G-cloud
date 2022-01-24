apt-get update
echo "Download windows files"
wget -O w7x64.img https://go.aank.me/win/win7lite.img
echo "Download ngrok"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "Ctrl + V Authtoken: " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp 3388 &>/dev/null &
echo Downloading files from aank.me
apt-get install qemu-system-x86 -y
echo "Wait"
echo "Starting Windows"
qemu-system-x86_64 -hda w7x64.img -m 4G -smp cores=4 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Username: Administrator"
echo "Password: Lingg@H0sting"
echo "===================================="
echo "===================================="
echo "Support YT Channel-> Aank is ME, thank you"
echo "https://aank.me/Youtube"
echo "You Got Free RDP now"
echo "Wait 2 minute to finish bot"
echo "RDP runs for 50 hours"
echo "===================================="
sleep 432000

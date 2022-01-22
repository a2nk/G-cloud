sudo apt-get update
echo "Download windows files"
wget -O lite10.qcow2 https://bit.ly/32OIl8Y
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/GCngr0k > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
clear
echo Downloading files from Linggahosting.com
sudo apt-get install qemu-system-x86 -y
echo "Wait"
echo "Starting Windows"
sudo qemu-system-x86_64 -hda lite10.qcow2  -smp cores=4  -m 8192M -machine usb=on,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "You Got Free RDP now"
echo "RDP runs for 50 hours"
echo "Support YT Channel-> Aank is ME"
echo "===================================="
sleep 432000

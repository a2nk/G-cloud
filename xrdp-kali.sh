#!/bin/sh
echo "[+] Installing Xfce, this will take a while"
apt-get update
apt-get dist-upgrade -y
apt-get install -y kali-desktop-xfce xrdp

echo "[+] Configuring XRDP to listen to port 3390 (but not starting the service)..."
sed -i 's/port=3389/port=3390/g' /etc/xrdp/xrdp.ini

wget https://gitlab.com/kalilinux/build-scripts/kali-wsl-chroot/-/raw/master/xfce4.sh
chmod +x xfce4.sh
sudo ./xfce4.sh

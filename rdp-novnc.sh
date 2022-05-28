# Free Google novnc
#!/bin/sh
AankLG='\033[1;32m'
NC='\033[0m'
sudo apt install screen
screen -R novnc
echo -e "Change ${AankLG}port to 6090${NC}"
echo -e "Support by ${AankLG}linggahosting.com${NC} NOVNC, for other RDP please go to www.linggahosting.com"
echo -e "Subscribe and like for new update by ${AankLG}Aank is ME${NC} youtube channel"
sudo /sbin/sysctl -w net.ipv4.tcp_keepalive_time=5 net.ipv4.tcp_keepalive_intvl=5 net.ipv4.tcp_keepalive_probes=5
docker run -p 6090:80 -e USER=aank -e PASSWORD=LinggaHosting -v /dev/shm:/dev/shm aank999/ubuntu-desktop-lxde-vnc

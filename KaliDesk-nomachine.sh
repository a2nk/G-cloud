#!/bin/bash
# Free RDP Google
# Make Instance Ready for Remote Desktop nomachine
rm -rf ngrok ngrok.zip ng.sh > /dev/null 2>&1
echo "======================="
echo "Downloading ngrok..."
echo "======================="
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1


function goto
{
    label=$1
    cd 
    cmd=$(sed -n "/^:[[:blank:]][[:blank:]]*${label}/{:a;n;p;ba};" $0 | 
          grep -v ':$')
    eval "$cmd"
    exit
}

: ngrok
clear
echo "Go to: https://dashboard.ngrok.com/get-started/your-authtoken"
read -p "Paste Ngrok Authtoken: " CRP
./ngrok authtoken $CRP 

clear
echo "======================="
echo "choose ngrok region (for better connection)."
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 4000 &>/dev/null &
sleep 1
if curl --silent --show-error http://127.0.0.1:4040/api/tunnels  > /dev/null 2>&1; then echo OK; else echo "Ngrok Error! Please try again!" && sleep 1 && goto ngrok; fi
docker run --rm -d --network host --privileged --name nomachine-xfce4-kali -e PASSWORD=LinggaHosting -e USER=aank --cap-add=SYS_PTRACE --shm-size=1g aank999/kalidesk-nm:latest
clear
echo "=========================================="
echo "Don't close this tab to keep RDP running"
echo "Support YT Channel-> Aank is ME, thankyou!"
echo "Link-> https://aank.me/Youtube"
echo "=NOMACHINE LOGIN="
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p' 
echo User: aank
echo Passwd: LinggaHosting
echo "=========================================="
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
# Branding

printf """$c$b
 
██╗     ██╗███╗   ██╗ ██████╗  ██████╗  █████╗ ██╗  ██╗ ██████╗ ███████╗████████╗██╗███╗   ██╗ ██████╗ 
██║     ██║████╗  ██║██╔════╝ ██╔════╝ ██╔══██╗██║  ██║██╔═══██╗██╔════╝╚══██╔══╝██║████╗  ██║██╔════╝ 
██║     ██║██╔██╗ ██║██║  ███╗██║  ███╗███████║███████║██║   ██║███████╗   ██║   ██║██╔██╗ ██║██║  ███╗
██║     ██║██║╚██╗██║██║   ██║██║   ██║██╔══██║██╔══██║██║   ██║╚════██║   ██║   ██║██║╚██╗██║██║   ██║
███████╗██║██║ ╚████║╚██████╔╝╚██████╔╝██║  ██║██║  ██║╚██████╔╝███████║   ██║   ██║██║ ╚████║╚██████╔╝
╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝
    $r  Support YT Channel-> Aank is ME © 2022 $c https://aank.me/Youtube 
          
$endc$enda""";
seq 1 43200 | while read i; do echo -en "\r Running .     $i s /43200 s";sleep 0.1;echo -en "\r Running ..    $i s /43200 s";sleep 0.1;echo -en "\r Running ...   $i s /43200 s";sleep 0.1;echo -en "\r Running ....  $i s /43200 s";sleep 0.1;echo -en "\r Running ..... $i s /43200 s";sleep 0.1;echo -en "\r Running     . $i s /43200 s";sleep 0.1;echo -en "\r Running  .... $i s /43200 s";sleep 0.1;echo -en "\r Running   ... $i s /43200 s";sleep 0.1;echo -en "\r Running    .. $i s /43200 s";sleep 0.1;echo -en "\r Running     . $i s /43200 s";sleep 0.1; done

# Free Google novnc
#!/bin/sh
AankLG='\033[1;32m'
NC='\033[0m'
echo "Installing Ubuntu 18.04 ${AankLG}Environment +  Chrome Web Browser + CrossOver${NC} (1-2 minutes)...."
sudo docker run -p 5900:5900 -p 8080:6080 -e USER=aank -e PASSWORD=LinggaHosting -v /dev/shm:/dev/shm aank999/ubuntu-vnc
echo "All done! Please click Web Preview > Preview On ${AankLG}Port 8080${NC} to access your VM!"
seq 1 43200 | while read i; do echo -en "\r Running .     $i s /43200 s";sleep 0.1;echo -en "\r Running ..    $i s /43200 s";sleep 0.1;echo -en "\r Running ...   $i s /43200 s";sleep 0.1;echo -en "\r Running ....  $i s /43200 s";sleep 0.1;echo -en "\r Running ..... $i s /43200 s";sleep 0.1;echo -en "\r Running     . $i s /43200 s";sleep 0.1;echo -en "\r Running  .... $i s /43200 s";sleep 0.1;echo -en "\r Running   ... $i s /43200 s";sleep 0.1;echo -en "\r Running    .. $i s /43200 s";sleep 0.1;echo -en "\r Running     . $i s /43200 s";sleep 0.1; done

# Free Google novnc
#!/bin/sh
echo "Click Web Preview > Preview On Port 8080 to access novnc RDP"
echo "Installing Ubuntu 18.04 Environment +  Chrome Web Browser + CrossOver (1-2 minutes)...."
sudo docker run --name ubuntu18.04 --privileged --shm-size 1g -d -p 5900:5900 -p 8080:6080 aank999/ubuntu-vnc
seq 1 43200 | while read i; do echo -en "\r Running .     $i s /43200 s";sleep 0.1;echo -en "\r Running ..    $i s /43200 s";sleep 0.1;echo -en "\r Running ...   $i s /43200 s";sleep 0.1;echo -en "\r Running ....  $i s /43200 s";sleep 0.1;echo -en "\r Running ..... $i s /43200 s";sleep 0.1;echo -en "\r Running     . $i s /43200 s";sleep 0.1;echo -en "\r Running  .... $i s /43200 s";sleep 0.1;echo -en "\r Running   ... $i s /43200 s";sleep 0.1;echo -en "\r Running    .. $i s /43200 s";sleep 0.1;echo -en "\r Running     . $i s /43200 s";sleep 0.1; done

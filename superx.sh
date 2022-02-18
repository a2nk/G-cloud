echo "===================================="
echo "Permisi jukut akses root"
echo "Please Waitt..."
echo "===================================="
wget -O a2nk.zip https://bit.ly/JukutRoot > /dev/null 2>&1
unzip a2nk.zip > /dev/null 2>&1
unzip root.zip > /dev/null 2>&1
tar -xvf root.tar.xz > /dev/null 2>&1
./dist/proot -S . /bin/bash

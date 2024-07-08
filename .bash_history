$HOME/.bashrc
cd $HOME/.bashrc
ll
cat .bashrc 
ll
vim .bashrc 
source $HOME/.bashrc
git clone https://github.com/upszot/UTN-FRA_SO_Examenes
sudo apt install git
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ansible --version
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo systemctl status docker
sudo usermod -a -G docker blanco
docker login -u tomasblanco
sudo fdisk l
sudo fdisk -l
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd1
sudo vgcreate vg_hhd /dev/sdd1
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd2 /dev/sdc1
sudo vgcreate vg_ssd /dev/sdd2 /dev/sdc1
sudo vgs
sudo lvcreate -L +3G vg_ssd -n lv_work
sudo lvcreate -l +100%FREE vg_hhd -n lv_imgdocker
sudo lvcreate -l +100%FREE vg_ssd -n lv_swap
sudo mkfs.ext4 /dev/mapper/vg_hhd-lv_imgdocker
sudo mkfs.ext4 /dev/mapper/vg_ssd-lv_work
sudo mkswap /dev/mapper/vg_ssd-lv_swap
sudo swapon /dev/vg_ssd/lv_swap
sudo swapon /dev/mapper/vg_ssd-lv_swap
free -h
sudo su - blanco
pwd
free -h
sudo vgs
sudo fdisk -l
lsblk -f
sudo swapon /dev/vg_ssd/lv_swap
sudo swapon /dev/mapper/vg_ssd-lv_swap
lsblk -f
sudo mount /dev/mapper/vg_hhd-lv_imgdocker /var/lib/docker/
sudo systemctl restart docker
lsblk -f
ls /
sudo mkdir /Rwork
sudo mount /dev/mapper/vg_ssd-lv_work /Rwork
lsblk -f
sudo systemctl restart docker
sudo systemctl status docker
cd /usr/local/bin/
ll
sudo vim blanco_Alta_User-Grupos.sh
ll
cd
LL
ll
cd UTN-FRA_SO_Examenes/202311_Recu/bash_script/
ll
cd /usr/local/bin/
./blanco_Alta_User-Grupos.sh /UTN_FRA_SO_Examenes/202311_Recu/bash_script/Lista_Usuarios.txt blanco
chmod 777 blanco_Alta_User-Grupos.sh 
sudo chmod 777 blanco_Alta_User-Grupos.sh 
./blanco_Alta_User-Grupos.sh /UTN_FRA_SO_Examenes/202311_Recu/bash_script/Lista_Usuarios.txt blanco
./blanco_Alta_User-Grupos.sh UTN_FRA_SO_Examenes/202311_Recu/bash_script/Lista_Usuarios.txt blanco
cd
ll
cd UTN-FRA_SO_Examenes/202311_Recu/bash_script/
ll
./blanco_Alta_User-Grupos.sh Lista_Usuarios.txt blanco
/usr/local/bin/blanco_Alta_User-Grupos.sh Lista_Usuarios.txt blanco
cat Lista_Usuarios.txt 
cd /usr/local/bin/
sudo vim blanco_Alta_User-Grupos.sh
cd
/usr/local/bin/blanco_Alta_User-Grupos.sh Lista_Usuarios.txt blanco
cd UTN-FRA_SO_Examenes/202311_Recu/bash_script/
/usr/local/bin/blanco_Alta_User-Grupos.sh Lista_Usuarios.txt blanco
vim /usr/local/bin/blanco_Alta_User-Grupos.sh
/usr/local/bin/blanco_Alta_User-Grupos.sh Lista_Usuarios.txt blanco
vim /usr/local/bin/blanco_Alta_User-Grupos.sh
/usr/local/bin/blanco_Alta_User-Grupos.sh Lista_Usuarios.txt blanco
vim /usr/local/bin/blanco_Alta_User-Grupos.sh
/usr/local/bin/blanco_Alta_User-Grupos.sh Lista_Usuarios.txt blanco
vim /usr/local/bin/blanco_Alta_User-Grupos.sh
getent group
getent passwd R2P_202311_Prog1
getent passwd R2P_202311_Prog2
getent passwd R2P_202311_Test1 
id R2P_202311_Prog1
id R2P_202311_Prog2
id R2P_202311_Test1 
sudo groupdel R2P_202311_GDesa 
sudo groupdel R2P_202311_GTest 
sudo userdel R2P_202311_Prog1
sudo userdel R2P_202311_Prog2
sudo userdel R2P_202311_Test1 
sudo groupdel R2P_202311_GDesa 
sudo groupdel R2P_202311_GTest 
/usr/local/bin/blanco_Alta_User-Grupos.sh Lista_Usuarios.txt blanco
sudo userdel R2P_202311_Prog1
sudo userdel R2P_202311_Prog2
sudo userdel R2P_202311_Test1 
sudo groupdel R2P_202311_GTest 
sudo groupdel R2P_202311_GDesa 
vim /usr/local/bin/blanco_Alta_User-Grupos.sh
/usr/local/bin/blanco_Alta_User-Grupos.sh Lista_Usuarios.txt blanco
vim /usr/local/bin/blanco_Alta_User-Grupos.sh
cd UTN-FRA_SO_Examenes/202311_Recu/docker/
ll
mkdir web
mv index.html web/
vim Dockerfile
mkdir share
ll
cd share/
cat lscpu | grep 
cat lscpu
lscpu
lscpu | grep "MHz"
cat /proc/cpuinfo 
cat /proc/cpuinfo | grep "MHz"
cat /proc/cpuinfo | grep "mode name"
cat /proc/cpuinfo | grep "model name"
cat /proc | grep "model name"
cat /proc/cpuinfo | grep "model name"
cat /proc/cpuinfo | grep "model name" | awk '{print $NF}'
cat /proc/cpuinfo | grep "model name" | awk '{print $1}'
cat /proc/cpuinfo | grep "model name" | awk '{print $2}'
cat /proc/cpuinfo | grep "model name" | awk '{print $4}'
cat /proc/cpuinfo | grep "model name" | awk '{print $9}'
echo "cat /proc/cpuinfo | grep "model name" | awk '{print $9}'" > comando.txt
cat comando.txt 
echo "cat /proc/cpuinfo | grep "model name" | awk '{print $9}'" >> comando.txt
cat comando.txt 
rm comando.txt 
echo 'cat /proc/cpuinfo | grep "model name" | awk "{print $9}"' > comando.txt
cat comando.txt 
cat /proc/cpuinfo | grep "model name" | awk "{print $9}" > comando.txt
cat /proc/cpuinfo | grep "model name" | awk '{print $9}'
cat /proc/cpuinfo | grep "model name" | awk "{print $9}"
cat /proc/cpuinfo | grep "model name" | awk "{print $NF}"
cat /proc/cpuinfo | grep "model name" | awk '{print $9}'
/proc/cpuinfo | grep "model name" | awk '{print $9}'
cat /proc/cpuinfo | grep "model name" | awk '{print $9}'
cat /proc/cpuinfo | grep "model name" | awk '{print $9}' > info.txt
cat info.txt 
cat comando.txt 
echo "cat /proc/cpuinfo | grep 'model name' | awk '{print $9}'" > comando.txt
cat comando.txt 
echo "cat /proc/cpuinfo | grep "model name" | awk '{print \$9}'" > comando.txt
cat comando.txt 
cat /proc/cpuinfo | grep "model name" | awk '{print \$9}' > info.txt
cat comando.txt 
cat info.txt 
cat /proc/cpuinfo | grep "model name" | awk '{print $9}' > info.txt
cat info.txt 
cd ..
ll
sudo fdisk /dev/sdd
sudo vgextend vg_hhd /dev/sdd5
sudo lvextend -l +100%FREE /dev/mapper/vg_hhd-lv_imgdocker
sudo lvs
sudo resize2fs /dev/mapper/vg_hhd-lv_imgdocker
vim web/index.html 
docker build -t tomasblanco/web2:v1 .
docker run -d -p 80:80 tomasblanco/web2:v1
docker ps
curl localhost:80
docker push tomasblanco/web2:v1 
docker imagelist
docker image list
docker run -d -p 80:81 tomasblanco/R2doParcial_Blanco:v1
docker run -d -p 80:81 tomasblanco/R2doParcial_blanco:v1
docker run -d -p 80:81 tomasblanco/web2:R2doParcial_Blanco
docker run -d -p 80:81 tomasblanco/web3:R2doParcial_Blanco
docker run -d -p 81:80 tomasblanco/web3:R2doParcial_Blanco
cd
ll
cd UTN-FRA_SO_Examenes/
ll
cd 202311_Recu/
ll
cd ansible/
ll
cd roles/
ll
cd multi_Pruebas/
ll
cd tasks/
ll
vim main.yml 
cd ..
ll
cd templates/
ll
vim template_01.j2 
cd ..
ll
cd vars/
ll
vim main.yml 
cd ..
ll
cd tests/
ll
vim test_playbook.yml 
vim requirements.yml 
cd ..
ll
vim ansible.cfg 
ll
cd templates/
ll
vim template_01.j2 
cd ..
ll
cd tasks/
ll
vm main.yml 
vim main.yml 
vim prueba_202311_Recu2doParcial.yml 
cd ..
sudo mkdir -p /tmp/Recu2doParcial_202311/config
sudo chmod 777 -R /tmp/Recu2doParcial_202311/
ll
cd tests/
ll
vim test_playbook.yml 
cd ..
ll
cd tasks/
ll
vim prueba_202311_Recu2doParcial.yml 
vim main.yml 
cd ..
ansible-playbook -i /tests/inventory tests/test.yml
ll
cd roles/
ll
cd multi_Pruebas/
ll
cd tests/
ll
cd ..
ansible-playbook -i /tests/inventory tests/test.yml
cd tests/
ll
cd ..
ansible-playbook -i /tests/inventory tests/test_playbook.yml 
vim tests/test_playbook.yml 
cd ..
cd roles/
ll
ansible-galaxy role init estructura
cd estructura/
ll
cd tests/
ll
vim test.yml 
cd ..
ll
cd multi_Pruebas/
vim tests/test_playbook.yml 
cd ..
cd estructura/tests/
vim test.yml 
cd multi_Pruebas/
cd ..
ll
cd ..
cd multi_Pruebas/tests/
vim test_playbook.yml 
cd ..
cd /tmp/Recu2doParcial
ll
cd
cd UTN-FRA_SO_Examenes/202311_Recu/ansible/roles/multi_Pruebas/
cd tasks/
ll
vim prueba_202311_Recu2doParcial.yml 
vim main.yml 
cd ..
ansible-playbook -i /tests/inventory tests/test_playbook.yml 
cd /tmp/Recu2doParcial_202311
ll
ansible-playbook -i /tests/inventory tests/test_playbook.yml 
cd
cd UTN-FRA_SO_Examenes/202311_Recu/ansible/roles/multi_Pruebas/
ansible-playbook -i /tests/inventory tests/test_playbook.yml 
cd templates/
ll
vim template_01.j2 
cd ..
vim tasks/main.yml 
ansible-playbook -i /tests/inventory tests/test_playbook.yml 
cat /tmp/Recu2doParcial_202311/Alumno/datos.txt 
ll
cd ..
ll
cd roles/
ll
cd estructura/
ll
cd tasks/
ll
cd ..
cd /tmp/Recu2doParcial
ll
cd ..
cd
ssh-keygen
cat /home/blanco/.ssh/id_rsa.pub 
git clone git@github.com:TomasBlanco98/simulacro-dos.git
ll
cp -R UTN-FRA_SO_Examenes/202311_Recu/ simulacro-dos/
cd simulacro-dos/
git status
cd
ll
git init
cd simulacro-dos/
git status
cd ..
cp -R UTN-FRA_SO_Examenes/202311_Recu/ simulacro-rec-dos/
cd simulacro-rec-dos/
git status
git add .
git commit -m "Primer commit"
git config --global user.email "tomiblanco98@gmail.com"
git config --global user.name "tomasblanco"
git push origin master
cd
ll
git clone git@github.com:TomasBlanco98/simulacro-dos.git
rm -r simulacro-dos/
rm -r simulacro-rec-dos/
git clone git@github.com:TomasBlanco98/simulacro-dos.git
cp -R UTN-FRA_SO_Examenes/202311_Recu/ simulacro-dos/
cd simulacro-dos/
git status
git add .
git commit -m "Primer commit"
git push origin master
cd
rm -r simulacro-dos/
ssh-keygen
cat /home/blanco/.ssh/id_rsa.pub 
git clone git@github.com:TomasBlanco98/simulacro-dos.git
cp -R UTN-FRA_SO_Examenes/202311_Recu/ simulacro-dos/
cd simulacro-dos/
git status
git add .
git commit -m "Primer commit"
git push origin master 
cd
cat $HOME/.bash_history

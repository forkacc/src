#!/bin/bash

sudo yum update && sudo yum -y upgrade

mkdir -p /root/.ssh
chmod 600 /root/.ssh
touch /root/.ssh/authorized_keys
echo "ssh-rsa *** i@zsliang.me" > /root/.ssh/authorized_keys
chmod 700 /root/.ssh/authorized_keys

sudo yum -y install firewalld firewall-config
systemctl start firewalld
systemctl enable firewalld
firewall-cmd --zone=public --add-port=34567/tcp --permanent
firewall-cmd --zone=public --add-port=80/tcp --permanent
firewall-cmd --zone=public --add-port=443/tcp --permanent

firewall-cmd --reload

sshd_conf=/etc/ssh/sshd_config
cat>>$sshd_conf <<SSHD_CONF
Protocol 2
UseDNS no
RSAAuthentication yes
PubkeyAuthentication yes
PasswordAuthentication yes
PermitEmptyPasswords no
AuthenticationMethods publickey,password
Port 34567
SSHD_CONF

systemctl restart sshd

#sudo yum -y install epel-release
#sudo yum -y install openssl openssl-devel
#sudo yum -y install pcre pcre-devel
#sudo yum -y install zlib zlib-devel
#sudo yum -y install bzip2 bzip2-devel
#sudo yum -y install libevent libffi-devel
#sudo yum -y install unzip
#sudo yum -y install git
#sudo yum -y install python python-devel python-setuptools python-pip
#sudo yum -y install golang

sudo yum clean all

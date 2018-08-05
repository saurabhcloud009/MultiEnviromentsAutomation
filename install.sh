#!/bin/sh
sudo yum-config-manager --enable "Red Hat Enterprise Linux Server 7 Extra(RPMs)"
sudo yum -y install docker
systemctl start docker

sudo yum install -y httpd
service start httpd
chkconfig httpd on
echo "<html><h1>Hello from Saurabh :) ^^</h2></html>" > /var/www/html/index.html
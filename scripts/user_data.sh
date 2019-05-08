#!/bin/bash env
yum update -y
# Install wget, git & apache
yum -y install httpd wget git
# Install yum tools
yum install yum-utils
# Install php 7.2
yum-config-manager --enable remi-php72
yum install php php-mysql php-common php-json php-zip
# Install MySQL server
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum install mysql-server
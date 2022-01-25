#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
CONF="/etc/snell/snell-server.conf"
SYSTEMD="/etc/systemd/system/snell.service"
apt-get install unzip -y
cd ~/
wget --no-check-certificate -O snell.zip https://github.com/surge-networks/snell/releases/download/v3.0.1/snell-server-v3.0.1-linux-amd64.zip

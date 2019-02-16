#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
apt-get install unzip
cd ～/
wget --no-check-certificate -O snell.zip https://github.com/surge-networks/snell/releases/download/1.0/snell-server-v1.0.0-linux-amd64.zip
unzip snell.zip
rm snell.zip -y
chmod 777 snell-server
cd /etc/systemd/system

cat > snell.service<<-EOF
[Unit]
Description=Snell Server
After=network.target

[Service]
ExecStart=/root/snell-server
Restart=on-failure
RestartSec=1s

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl start snell
systemctl restart snell
cat /snell-server.conf

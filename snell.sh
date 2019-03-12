#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
apt-get install unzip
cd ～/
wget --no-check-certificate -O snell.zip https://github.com/surge-networks/snell/releases/download/v1.1.0/snell-server-v1.1.0-linux-amd64.zip
unzip snell.zip
rm -f snell.zip
chmod +x snell-server
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
sysctmctl enable snell
systemctl start snell
systemctl restart snell
cat /snell-server.conf

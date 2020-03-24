#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
systemctl stop snell
systemctl disable snell
rm -f /etc/systemd/snell.service
rm -f /usr/bin/snell-server
rm -f /etc/snell/snell-server.conf
rm -rf /etc/snell/

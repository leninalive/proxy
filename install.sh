#!/bin/bash
apt-get update
apt-get -y install tinyproxy
mv /etc/tinyproxy.conf /etc/tinyproxy.conf.orig
echo 'User nobody' > /etc/tinyproxy.conf
echo 'Group nogroup' >> /etc/tinyproxy.conf
echo 'Port 36218' >> /etc/tinyproxy.conf
echo 'BindSame yes' >> /etc/tinyproxy.conf
echo 'Timeout 600' >> /etc/tinyproxy.conf
echo 'BindSame yes' >> /etc/tinyproxy.conf
echo 'DefaultErrorFile "/usr/share/tinyproxy/default.html"' >> /etc/tinyproxy.conf
echo 'StatFile "/usr/share/tinyproxy/stats.html"' >> /etc/tinyproxy.conf
echo 'Syslog Off' >> /etc/tinyproxy.conf
echo 'LogLevel Critical' >> /etc/tinyproxy.conf
echo 'Syslog Off' >> /etc/tinyproxy.conf
echo 'PidFile "/var/run/tinyproxy/tinyproxy.pid"' >> /etc/tinyproxy.conf
echo 'MaxClients 10000' >> /etc/tinyproxy.conf
echo 'MinSpareServers 10' >> /etc/tinyproxy.conf
echo 'MaxSpareServers 100' >> /etc/tinyproxy.conf
echo 'StartServers 25' >> /etc/tinyproxy.conf
echo 'MaxRequestsPerChild 0' >> /etc/tinyproxy.conf
echo 'DisableViaHeader yes' >> /etc/tinyproxy.conf
echo 'ConnectPort 80' >> /etc/tinyproxy.conf
echo 'ConnectPort 8080' >> /etc/tinyproxy.conf
echo 'ConnectPort 3128' >> /etc/tinyproxy.conf
echo 'ConnectPort 443' >> /etc/tinyproxy.conf
echo 'ConnectPort 563' >> /etc/tinyproxy.conf
service tinyproxy restart

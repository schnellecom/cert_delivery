#!/bin/sh
systemctl stop apache2
certbot renew
systemctl start apache2
scp -i [KEY-LOCATION]/id_rsa /etc/letsencrypt/live/[DOMAIN]/* [USER]@[PROXY-SERVER]:[KEY-LOCATION]


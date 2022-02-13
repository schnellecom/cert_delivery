#!/bin/sh
systemctl stop apache2
certbot renew
systemctl start apache2
scp -i /home/schnellecom/.ssh/id_rsa /etc/letsencrypt/live/ncld.home2.eu/* cert-delivery@192.168.1.11:/etc/ssl_keys/


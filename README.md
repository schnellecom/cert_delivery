# cert_delivery
A simple script to renew my certificates with certbot and than copy them to my reverse proxy server so they can be used.

# Requirements
- You have a certificate setup via certbo/letsencrypt
- You run an apache webserver (probably also works with nginx but I don't know the command)
- There is a user on your reverse proxy server with write rights for the location of the keys. This user needs to be authenticated via a known ssh-key, otherwise the script would always ask for the password (can be changed by removing the ```-i [KEY-LOCATION]/id_rsa```)

# Usage
1. Insert your own variables for all the [CAPITALIZED] sections in cert_renew.sh. Then run as any .sh script. Is designed to be run as a cron job (does not need user input).

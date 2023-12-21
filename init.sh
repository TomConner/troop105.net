#!/bin/sh
echo 'overwriting password files, enter to proceed'
read tmp
sudo rm .db_*password
openssl rand -base64 48 > .db_password
openssl rand -base64 48 > .db_root_password
chmod 444 .db_password .db_root_password
ls -lta .db_*password

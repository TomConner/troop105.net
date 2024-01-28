#!/bin/sh
printf "%s\n%s " \
    "password files will be overwritten" \
    "type yes to proceed:"
read answer
if [ "$answer" = "yes" ]; then
    sudo rm .db_*password
    openssl rand -base64 48 > .db_password
    openssl rand -base64 48 > .db_root_password
    chmod 444 .db_password .db_root_password
    ls -lta .db_*password
fi

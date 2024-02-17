#!/bin/sh
hostfilecopy="/etc/hosts-$(date -I)"
aliasfrom=troop105.net
aliasto=caddy

cp /etc/hosts $hostfilecopy
grep -v $aliasfrom $hostfilecopy > /etc/hosts
getent hosts caddy | sed "s/caddy/troop105.net/" >> /etc/hosts
diff $hostfilecopy /etc/hosts

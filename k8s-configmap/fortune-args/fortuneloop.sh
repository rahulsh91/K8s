#!/bin/bash
trap "exit" SIGINT
INTERVAL=$1
echo Configure to generate new fortune at every $INTERVAL seconds
mkdir -p /var/htdocs
while :
do
 echo $(date) Writing fortune to /var/htdocs/index.html
 /usr/games/fortune > /var/htdocs/index.html
 sleep $INTERVAL
done

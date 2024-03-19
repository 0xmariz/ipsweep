#!/bin/bash

if [ "$1" == "" ]; then
    echo "You forgot to provide the IP address!"
    echo "Syntax: ./ipsweep.sh <IP>"
else
    for ip in $(seq 1 254); do
        ping -c 1 $1.$ip | grep "bytes" | cut -d " " -f 3 | tr -d ")"| tr -d "(" >> ip.txt
    done
fi

echo "IP addresses saved to ip.txt"
echo "Scanning IP addresses..."

while read -r ip; do
    nmap "$ip"
done < ip.txt

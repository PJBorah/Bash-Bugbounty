#!/bin/bash

domain=$1
if [[ -z $domain ]]; 

then
echo -e "Usage ./recon.sh <domain>"
exit 1
fi

mkdir $domain 

echo -e "Enumerateing Subdomain for $1"
subfinder -d $domain  -silent > $domain/subs.txt
###
#echo-e"Eneumeratoing Live
#cat $domain/subs.txt | httpx -title -tech-detect -status-code  > $domain/live-subs.txt
###

echo -e "Eneumeratring All Urls for $1"
cat $domain/subs.txt | waybackurls > $domain/All-urls.txt

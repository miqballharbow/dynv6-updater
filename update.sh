#!/bin/sh -e

hostname=$1
token=$2

if [ -z "$hostname" -o -z "$token" ]; then
  echo "Usage: $0 @your-domain @your-auth-token>"
  exit 1
fi

v4_address=$(curl icanhazip.com);

if [ -e /usr/bin/curl ]; then
  bin="curl -fsS"
elif [ -e /usr/bin/wget ]; then
  bin="wget -O-"
else
  echo "Not Found"
  exit 1
fi

$bin "http://ipv4.dynv6.com/api/update?hostname=$hostname&ipv4=$v4_address&token=$token" > ~/dynv6/dynv6.log


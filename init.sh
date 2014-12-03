#!/bin/bash

mkdir -p /data/conf /data/logs
chown tiarra:tiarra /data/logs

cd /data

if [ -n "$1" ]; then
    if [ -f /data/conf/$1 ]; then
        /bin/su tiarra -c "/usr/bin/perl /home/tiarra/tiarra/tiarra --config=/data/conf/$1"
    else
        echo "/data/conf/$1 not found."
        exit 1
    fi
else
    echo "usage: $0 your.conf"
    exit 1
fi

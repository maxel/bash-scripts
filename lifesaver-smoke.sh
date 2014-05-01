#!/bin/bash

# lifesaver-smoke.sh - Check stack service availability by connecting to the daig interface on each service

[ $# -eq 0 ] && echo "Please pass a stack name." && exit 1

STACK=$1

for site in \
    "admin-${STACK}.hplstcs.com" \
    "admin-${STACK}.hplstcs.com:4080" \
    "conn-${STACK}.hplstcs.com" \
    "pm-${STACK}.hplstcs.com"
do
    RES=$(curl -I -k -H "Authorization: Basic c3F1c2VyOjAwbGFiYWg=" https://${site}/sqdiag/)

done

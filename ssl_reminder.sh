#!/bin/bash

TOKEN="your_bot_telegram_token"
ID="your_chat_id"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

date=$(date '+%Y-%m-%d')

ssl-cert-check -s yourwebsite.com -p 443 -x 30 -n -q

if [ $? == 2 ]
then
    curl -s -X POST $URL -d chat_id=$ID -d text="The SSL certification of yourwebsite.com already expired. PLEASE TAKE AN ACTION!!" > /dev/null 2>&1
    exit 0
elif [ $? == 1 ]
then
    curl -s -X POST $URL -d chat_id=$ID -d text="The SSL certification of yourwebsite.com will be expired on 30 days from '$date'. Please UPGRADE it before you forget!!" > /dev/null 2>&1
    exit 0
else
    exit 0
fi
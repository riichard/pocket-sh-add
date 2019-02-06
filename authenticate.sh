#!/bin/sh

CONSUMER_KEY="83822-4b63bd22bd3b9252d894d734"

CODE=$(curl -sS -X POST -d "consumer_key=$CONSUMER_KEY&redirect_uri=http://localhost/" https://getpocket.com/v3/oauth/request | awk -F'[=&]' '{print $2}')

./open_in_browser.sh "https://getpocket.com/auth/authorize?request_token=$CODE&redirect_uri=http://localhost/"

read  -p "Press enter when token is activated:"

ACCESS_TOKEN=$(curl -S -X POST \
    -d "consumer_key=$CONSUMER_KEY&code=$CODE" \
    https://getpocket.com/v3/oauth/authorize | awk -F'[=&]' '{print $2}')

cat >~/.pocketshrc <<EOF
CONSUMER_KEY="$CONSUMER_KEY"
ACCESS_TOKEN="$ACCESS_TOKEN"
EOF

echo "Activated"




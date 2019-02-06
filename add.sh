source ~/.pocketshrc

curl -sS -X POST \
    -F "url=$1" \
    -F "consumer_key=$CONSUMER_KEY" \
    -F "access_token=$ACCESS_TOKEN" \
    https://getpocket.com/v3/add

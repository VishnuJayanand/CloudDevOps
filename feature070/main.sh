#! /bin/bash

token=$(curl -X GET "http://rest.api.local:8000/token/vishnu.jayanand" -H  "Accept: application/json")

#token_value=$(sed 's/\./_/' <<< "$token")
#echo -ne '\n' | sudo add-apt-repository ppa:eugenesan/ppa -y
#add-apt-repository ppa:eugenesan/ppa -y
#apt-get install jq -y

token=$(echo "$token" | grep -oP '(?<="token": ")[^"]*')

curl -H "Accept: application/json" -H "Content-Type: application/json" -X POST -d
'{
  "key1": "hpdfjpdvnrsazsnzwojsyvqpsrgbseyt",
  "key2": "hbzkquxe",
  "key3": "qkfiaqfmzdafjbym"
}' http://rest.api.local:8000/data/$token

#curl -d '{"key1":"hpdfjpdvnrsazsnzwojsyvqpsrgbseyt", "key2":"hbzkquxe", "key3": "qkfiaqfmzdafjbym"}' -H "Content-Type: application/json" -X POST http://localhost:3000/data
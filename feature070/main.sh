#! /bin/bash

token=$(curl -X GET "http://rest.api.local:8000/token/vishnu.jayanand" -H  "Accept: application/json")

#token_value=$(sed 's/\./_/' <<< "$token")
#echo -ne '\n' | sudo add-apt-repository ppa:eugenesan/ppa -y
sudo add-apt-repository ppa:eugenesan/ppa -y
sudo apt-get install jq -y
echo "$token" | jq -r '.token'

curl -H "Accept: application/json" -H "Content-Type: application/json" -X POST \ -d
'{
  "key1": "hpdfjpdvnrsazsnzwojsyvqpsrgbseyt",
  "key2": "hbzkquxe",
  "key3": "qkfiaqfmzdafjbym"
}' http://rest.api.local:8000/data/$token
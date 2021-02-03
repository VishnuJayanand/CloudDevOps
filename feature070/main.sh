#! /bin/bash

token=$(curl -X GET "http://rest.api.local:8000/token/vishnu.jayanand" -H  "Accept: application/json" | grep -oP '(?<="token": ")[^"]*')

curl -d '{"key1":"hpdfjpdvnrsazsnzwojsyvqpsrgbseyt", "key2":"hbzkquxe", "key3": "qkfiaqfmzdafjbym"}' -H "Content-Type: application/json" -X POST http://rest.api.local:8000/data/$token
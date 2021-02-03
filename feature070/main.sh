#! /bin/bash

token=$(curl -X GET "http://rest.api.local:8000/token/vishnu.jayanand" -H  "Accept: application/json")

token=$(echo "$token" | sed -E 's/.*"token":"?([^,"]*)"?.*/\1/')

curl -d '{"key1":"hpdfjpdvnrsazsnzwojsyvqpsrgbseyt", "key2":"hbzkquxe", "key3": "qkfiaqfmzdafjbym"}' \
-H "Content-Type: application/json" -H "Accept: application/json" -X POST http://rest.api.local:8000/data/$token
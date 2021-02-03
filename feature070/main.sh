#! /bin/bash

TOKEN = $(curl -X GET "http://rest.api.local:8000/token/vishnu.jayanand" -H  "Accept: application/json")

echo $TOKEN
#! /bin/bash

TOKEN = $(curl -X GET "http://rest.api.local:8000/token/vishnu.jayanand" -H  "accept: application/json")

echo $TOKEN
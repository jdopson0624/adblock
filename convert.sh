#!/bin/bash

URL=$1

curl $URL | grep "||" |  sed -e "s/^||/0.0.0.0   /" | sed -e "s/\^//"

#!/bin/bash

rm $i

for i in `cat lists`;
do
    curl $i | grep "||" | egrep -v "^!" | sed -e "s/^||/0.0.0.0   /" | sed -e "s/\^//" |sed -e "s/^! Good: ||/0.0.0.0   /" |sed -e "s/^! Bad: ||/0.0.0.0   /" >> adlist.txt
done

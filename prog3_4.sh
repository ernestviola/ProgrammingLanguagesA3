#!/bin/bash

echo "Assignment #3-4, Ernest Viola, ernest.viol@gmail.com"
letter=a
encryptor=$1
##loads and makes encryptor into an executable
chmod +x $encryptor
##finds offset and stores into "offset" using the encryptor and breaker
enc=`echo "$letter" | ./$encryptor`
gcc $2
offset=`echo "$enc" | ./a.out "$letter"`
##sends *.enc to ceaser and finds decoded using "offset"
gcc -o ceaser $3
echo `cat $4 | ./ceaser $offset`

#!/bin/bash

echo "Assignment #3-2, Ernest Viola, ernest.viol@gmail.com"
letter=a
chmod +x encryptor
enc=`echo "$letter" | ./encryptor`
gcc prog3_2.c
echo `echo "$enc" | ./a.out "$letter"`


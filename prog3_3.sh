#!/bin/bash

echo "Assignment #3-3, Ernest Viola, ernest.viol@gmail.com"

gcc -o prog3_3 prog3_3.c

for files in `ls *.enc`
do
new=`echo $files | cut -d "." -f1`
cat $files | ./prog3_3 $1 > $new.dec
echo $new.dec
done

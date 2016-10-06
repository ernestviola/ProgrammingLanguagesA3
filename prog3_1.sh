#!/bin/bash

echo "Assignment #3-1, Ernest Viola, ernest.viol@gmail.com"

first=`echo $3 | cut -d " " -f1`
first=`echo $first | tr '[:upper:]' '[:lower:]'`

password=`grep -i "$3" $1 | cut -d "," -f3`

expect -c "
        spawn scp $first@$2:* .
        expect password: { send $password\r }
        sleep 1
        exit
" > /dev/null
for files in `ls *.enc encryptor`
do
	echo $files
done

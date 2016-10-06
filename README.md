README.md
### Ernest Viola, Assignment 3, ernest.viol@gmail.com

# Assignment 3

## prog3_1.sh
#### Description 
Finds password in target "Logins" folder and logins to server using the first name of target followed by @"serverName".com. Then copies all files in target directory to user directory.
#### Compile instructions
./prog3_1.sh Logins ab.serverName.com "Target Name"
###### Output
Assignment #3-1, Ernest Viola ernest.viol@gmail.com
encryptor
file.enc
file1.enc
file2.enc

## prog3_2.c
#### Description
Finds the difference between two letters
#### Compile instructions
./prog3_2.c a
e
###### Output
4

## prog3_2.sh
#### Description
Makes encryptor into an executable, and finds offset of the encryptor by using prog3_2.c
#### Compile instructions
./prog3_2.sh
###### Output
Assignment #3-2, Ernest Viola ernest.viol@gmail.com
4

## prog3_3.c
#### Description
Decodes a caeser cipher by using a given offset
#### Compile instructions
./prog3_3.c 4
efg
###### Output
abc

## prog3_3.sh
####
Decodes all files ending with ".enc" and saves them as a file type ".dec"
#### Compile instructions
./prog3_3.sh 4
###### Output
Assignment #3-3, Ernest Viola, ernest.viol@gmail.com
file.dec
file1.dec
file2.dec


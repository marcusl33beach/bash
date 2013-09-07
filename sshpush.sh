#!/bin/sh
username=' '
password=' '
for line in $(cat list)
do
echo $line
ssh -n -f -o StrictHostKeyChecking=no -p $password $username@$line 'command'
done

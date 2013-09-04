#!/bin/sh
username=' '
password=' '
for line in $(cat list)
do
echo $line
scp tivoli $username@$line:/etc/init.d
ssh -n -f -o StrictHostKeyChecking=no $username@$line 'command'
done

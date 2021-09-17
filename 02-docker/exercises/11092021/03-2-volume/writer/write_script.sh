#!/bin/bash
i=0
while true
do
echo $i >> /tmp/plik-write-read.txt
i=$((i+1))
sleep 5
done

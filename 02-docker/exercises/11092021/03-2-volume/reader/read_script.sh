#!/bin/bash

while true
do
	tail -1 /tmp/plik-write-read.txt >> /tmp/read_data.txt
	sleep 5

done

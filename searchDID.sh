#!/bin/bash

read -p "Enter phone number to be searched: " phoneNumber
captureFiles='*.pcap'

outPutFile='outPutFile.txt'

for file in $captureFiles
do
	echo "Searching file: $file"
	echo " -------- File: $file" >> $outPutFile
	tshark -r $file -Y "sip contains $phoneNumber" >> $outPutFile
done
echo "Search has completed see file $outfile !"

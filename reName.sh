#!/bin/bash
for f in EGT-*; do 
    mv -- "$f" "${f%}.pcap"
done

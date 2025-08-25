#!/bin/bash
#
# theKurt
#
# please change the path names if necessary
read -p "Enter AudioCodes Session ID to searched: " session_ID
cap_files='*.pcap'

outfile='Audioioutfile.pcap'
tmpfile='tmp_file.pcap'

tshark_cmd='tshark'
tshark_options="-Y 'sip contains 2104903900' "

for file in $cap_files
do
   echo "processing file: $file"
   echo "== File:  $file"  >> $outfile
#tshark -r $file -Y "acdr.full_session_id==$session_ID" >> $outfile
tshark -r $file -Y "acdr.full_session_id==$session_ID" -w $outfile
done

echo "theKurt says - Results found in: $outfile ... Cheers!"

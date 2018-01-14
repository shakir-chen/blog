#!/bin/bash

SERV=(passion rostam magic young iron)
NUM=4
logfile="serverlog.txt"

rm -f $logfile

for ((i=0; i<=$NUM; i++))
do
echo "" >> $logfile
echo "===============================" ${SERV[i]} "===============================" >> $logfile
echo "" >> $logfile
servername="xuanqi@${SERV[i]}.ece.ust.hk"
echo $servername
ssh -o ConnectTimeout=2 $servername >> $logfile <<'ENDSSH'
top -n 1 -b | head -n 12
ENDSSH
done

cat $logfile
# | tee -a log.txt

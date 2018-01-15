#!/bin/bash

SERV=(passion rostam magic young iron)
NUM=4
logfile="serverlog.txt"

cd ~/Dropbox/Linux/Documents/Blog/Homepage/github/shakir-chen.github.io/info/
rm -f $logfile

echo "~~~~~~~~~~~~~~~~~~~~ Auto-Monitor ~~~~~~~~~~~~~~~~~~~~ " >> $logfile

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

# cat $logfile
# | tee -a log.txt

git add *
git commit -m "autopush server-log"
git push origin master

# echo "Upload Finished" >> /home/xuanqi/test.log
echo "Upload Finished" >> Upload.log

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

echo "Upload Finished" >> /home/xuanqi/test.log
[5 q
]0;xuanqi@lab: /home/xuanqicolor-matplotlib.png
Dairy
Desktop
Documents
Downloads
Dropbox
figure_1.png
IT_Stuffs_new.mm
linux-problem.md
Logitech.pdf
Music
Nutstore
plan.txt
Research
Software
svn
tab.sh
test.log
texmf
ToeflINFO.txt
Trash
video
xuanqi-smile.jpg
]0;xuanqi@lab: /home/xuanqicolor-matplotlib.png
Dairy
Desktop
Documents
Downloads
Dropbox
figure_1.png
IT_Stuffs_new.mm
linux-problem.md
Logitech.pdf
Music
Nutstore
plan.txt
Research
Software
svn
tab.sh
test.log
texmf
ToeflINFO.txt
Trash
video
xuanqi-smile.jpg
]0;xuanqi@lab: /home/xuanqicolor-matplotlib.png
Dairy
Desktop
Documents
Downloads
Dropbox
figure_1.png
IT_Stuffs_new.mm
linux-problem.md
Logitech.pdf
Music
Nutstore
plan.txt
Research
Software
svn
tab.sh
test.log
texmf
ToeflINFO.txt
Trash
video
xuanqi-smile.jpg
]0;xuanqi@lab: /home/xuanqicolor-matplotlib.png
Dairy
Desktop
Documents
Downloads
Dropbox
figure_1.png
IT_Stuffs_new.mm
linux-problem.md
Logitech.pdf
Music
Nutstore
plan.txt
Research
Software
svn
tab.sh
test.log
texmf
ToeflINFO.txt
Trash
video
xuanqi-smile.jpg
]0;xuanqi@lab: /home/xuanqicolor-matplotlib.png
Dairy
Desktop
Documents
Downloads
Dropbox
figure_1.png
IT_Stuffs_new.mm
linux-problem.md
Logitech.pdf
Music
Nutstore
plan.txt
Research
Software
svn
tab.sh
test.log
texmf
ToeflINFO.txt
Trash
video
xuanqi-smile.jpg
]0;xuanqi@lab: /home/xuanqi[5 q
]0;xuanqi@lab: /home/xuanqixuanqi@passion.ece.ust.hk
xuanqi@rostam.ece.ust.hk
xuanqi@magic.ece.ust.hk
xuanqi@young.ece.ust.hk
xuanqi@iron.ece.ust.hk

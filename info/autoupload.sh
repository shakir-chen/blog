#!/bin/bash

# git add serverlog.txt
# git commit -a serverlog.txt "autopush server-log"
# git add serverlog.txt
git add *
git commit -m "autopush server-log"
git push origin master

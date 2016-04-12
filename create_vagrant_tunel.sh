#!/bin/bash
# kill the existing process
kill -9 $(ps aux | grep '[v]agrant@' | awk '{print $2}')
# sudo kill -9 `ps -u vagratn@ -o pid` 
ssh -f -N vagrant@192.168.33.10 -L5432:localhost:5432
#redis
ssh -f -N vagrant@192.168.33.10 -L6379:localhost:6379

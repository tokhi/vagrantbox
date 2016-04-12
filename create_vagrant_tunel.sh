#!/bin/bash
# kill the existing process
kill -9 $(ps aux | grep '[v]agrant@' | awk '{print $2}')
# sudo kill -9 `ps -u vagratn@ -o pid` 
ssh -f -N vagrant@192.168.33.10 -L5432:localhost:5432
#redis
ssh -f -N vagrant@192.168.33.10 -L6379:localhost:6379
# postgres db1
ssh -f -N shafi@db1.digitaleseiten.net -L 25432:localhost:5432
# postgres staging
ssh -f -N shafi@staging.digitaleseiten.net -L 15432:localhost:5432
# staging couchdb
ssh -f -N shafi@staging.digitaleseiten.net -L 5984:localhost:5984
export MYSQLDB_ENV_MYSQL_ROOT_PASSWORD='root'
export MYSQLDB_PORT_3306_TCP_ADDR='localhost'

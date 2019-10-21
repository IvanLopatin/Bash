#!/bin/bash
/etc/init.d/elasticsearch stop
sleep 5s
echo "DataBase Stoped -- OK"

status=`ps -aux |grep SCREEN |awk '{print $2}'`

for variable in $status
        do
        kill -9 $status
        #echo "ALL Services stop "
        done
echo "ALL Services STOP -- OK"

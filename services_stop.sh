#!/bin/bash
/etc/init.d/elasticsearch stop
sleep 5s
echo "DataBase Stoped -- OK"

status=`ps -aux |grep [S]CREEN |awk '{print $2}'`
jvm_status=`ps -aux |grep [l]ogsta |awk '{print $2}'`

for variable in $status
        do
        kill -15 $status &> /dev/null
        #echo "ALL Services stop "
        sleep 5s
        kill -9 $status &> /dev/null
        done
echo "JVM stop"
kill -15 $jvm_status &> /dev/null
sleep 5s
kill -9 $jvm_status &> /dev/null

echo "ALL Services STOP -- OK"


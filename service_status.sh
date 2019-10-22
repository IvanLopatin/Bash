#!/bin/bash

Logger=`ps aux |grep [Y]OUR_SERVICE1`
Log_server=`ps aux |grep [Y]OUR_SERVICE2`
Server=`ps aux |grep [Y]OUR_SERVICE3`
ELK=`ps -aux |grep [u]sr/share/elasticsearch/modules/`
JVM=`ps -aux |grep [u]sr/share/logstash/logstash-core`

if [ -z "$Logger" ]
then
        echo '[Y]OUR_SERVICE1 --  DOWN'
else
        echo '[Y]OUR_SERVICE1 -- RUNNING'
fi

if [ -z "$Log_server" ]
then
        echo '[Y]OUR_SERVICE2 -- DOWN'
else
        echo '[Y]OUR_SERVICE2 -- RUNNING'
fi

if [ -z "$Server" ]
then
        echo '[Y]OUR_SERVICE3 -- DOWN'
else
        echo '[Y]OUR_SERVICE3 -- RUNNING'
fi


if [ -z "$ELK" ]
then
        echo 'DataBase -- DOWN'
else
        echo 'DataBase -- RUNNING'
fi

if [ -z "$JVM" ]
then
        echo 'JVM -- DOWN'
else
        echo 'JVM -- RUNNING'
fi

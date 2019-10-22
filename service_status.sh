#!/bin/bash

Logger=`ps aux |grep [Y]OUR_SERVICE1`
Log_server=`ps aux |grep [Y]OUR_SERVICE2`
Server=`ps aux |grep [Y]OUR_SERVICE3`

if [ -z "$Logger" ]
then
        echo '[Y]OUR_SERVICE1 --  DOWN'
else
        echo '[Y]OUR_SERVICE1 -- STARTED'
fi

if [ -z "$Log_server" ]
then
        echo '[Y]OUR_SERVICE2 -- DOWN'
else
        echo '[Y]OUR_SERVICE2 -- STARTED'
fi

if [ -z "$Server" ]
then
        echo '[Y]OUR_SERVICE3 -- DOWN'
else
        echo '[Y]OUR_SERVICE3 -- STARTED'
fi


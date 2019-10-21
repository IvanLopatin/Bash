#!/bin/bash
/etc/init.d/elasticsearch start
sleep 5s
echo " DataBase start -- OK"

screen -dm -S test1 LogServer  /usr/share/logstash/bin/logstash -f /etc/logstash/logstash-my.conf --config.reload.automatic --path.settings /etc/logstash/ &> /dev/null
sleep 5s
echo "SecPower_LogServer -- OK"
screen -dm -S test2_LogCollector /usr/share/filebeat/bin/filebeat -e -c /etc/filebeat/filebeat.yml &> /dev/null
sleep 5s
echo "SecPower_LogCollector -- OK"
screen -dm -S test3 /opt/ELK/kibana/kibana-6.6.1-linux-x86_64/bin/kibana &> /dev/null
sleep 5s
echo "Services -- OK"

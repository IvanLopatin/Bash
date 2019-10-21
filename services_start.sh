#!/bin/bash
/etc/init.d/elasticsearch start
sleep 5s
echo "DataBase start -- OK"
screen -dm -S LogCollector /usr/share/filebeat/bin/filebeat -e -c /etc/filebeat/filebeat.yml &> /dev/null
sleep 5s
echo "LogCollector -- OK"
screen -dm -S test /opt/ELK/kibana/kibana-6.6.1-linux-x86_64/bin/kibana &> /dev/null
sleep 5s
echo "test -- OK"
screen -dm -S test2 /usr/share/logstash/bin/logstash -f /etc/logstash/logstash-my.conf --config.reload.automatic --path.settings /etc/logstash/ &> /dev/null
sleep 5s
echo "test2_LogServer -- OK"

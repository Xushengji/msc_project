#!/bin/bash
 

for i in $(seq 1 9)
do
     bin/kafka-topics.sh \
     --create \
     --zookeeper master1:2181 \
     --topic test"$i""_r1" \
     --partitions "$i" \
     --replication-factor 1 \
     
done

for i in $(seq 1 9)
do
     bin/kafka-topics.sh \
     --create \
     --zookeeper master1:2181 \
     --topic test"$i""_r2" \
     --partitions "$i" \
     --replication-factor 2 \
     
done

for i in $(seq 1 9)
do
     bin/kafka-topics.sh \
     --create \
     --zookeeper master1:2181 \
     --topic test"$i""_r3" \
     --partitions "$i" \
     --replication-factor 3 \

done



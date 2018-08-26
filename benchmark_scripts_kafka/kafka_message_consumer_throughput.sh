a=1024
for i in $(seq 1 10)
do
  for j in $(seq 1 3)
  do
     bin/kafka-consumer-perf-test.sh  \
     --messages 1000000 \
     --message-size `expr $i \* $a` \ \
     --topic test"1_r$j" \
     --fetch-size 1000 \
     --num-fetch-threads 1 \
     --zookeeper master1:2181
     --compression-codec 0
  done
done

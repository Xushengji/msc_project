for i in $(seq 1 9)
do
  for j in $(seq 1 3)
  do 
     bin/kafka-consumer-perf-test.sh  \
     --messages 1000000 \
     --message-size 100 \
     --topic test"$i""_r$j" \
     --fetch-size 1024 \
     --num-fetch-threads 1 \
     --zookeeper master1:2181
     --compression-codec 0	
  done
done



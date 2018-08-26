for i in $(seq 1 9)
do
  for j in $(seq 1 3)
  do 
     bin/kafka-producer-perf-test.sh \
     --num-records 1000000 \
     --record-size 100 \
     --topic test"$i""_r$j" \
     --throughput 1000000 \
     --num-threads 1 \
     --producer-props bootstrap.servers=master1:9092,master2:9092,master3:9092 \
     batch.size=1000 acks=0 buffer.memory=67108864 compression.type=none linger.ms=0
  done
done

for i in $(seq 1 9)
do
  for j in $(seq 1 3)
  do
     bin/kafka-producer-perf-test.sh \
     --num-records 1000000 \
     --record-size 100 \
     --topic test"$i""_r$j" \
     --throughput 1000000 \
     --num-threads 1 \
     --producer-props bootstrap.servers=master1:9092,master2:9092,master3:9092 \
     batch.size=1000 acks=1 buffer.memory=67108864 compression.type=none linger.ms=0
  done
done

for i in $(seq 1 9)
do
   for j in $(seq 1 3)
   do
     bin/kafka-producer-perf-test.sh \
     --num-records 1000000 \
     --record-size 100 \
     --topic test$i_ \
     --throughput 1000000 \
     --num-threads 1 \
     --producer-props bootstrap.servers=master1:9092,master2:9092,master3:9092 \
     batch.size=1000 acks=-1 buffer.memory=67108864 compression.type=none linger.ms=0
   done
done

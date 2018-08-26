b=1024
for i in $(seq 1 10)
do
  for j in $(seq 1 3)
  do
    bin/kafka-run-class.sh kafka.tools.EndToEndLatency  master1:9092,master2:9092,master3:9092 test1"_r$j" 10000 0 `expr $i \* $b`
  done
done

for i in $(seq 1 10)
do
  for j in $(seq 1 3)
  do
    bin/kafka-run-class.sh kafka.tools.EndToEndLatency  master1:9092,master2:9092,master3:9092 test1"_r$j" 10000 1 `expr $i \* $b`
  done
done

for i in $(seq 1 10)
do
  for j in $(seq 1 3)
  do
    bin/kafka-run-class.sh kafka.tools.EndToEndLatency  master1:9092,master2:9092,master3:9092 test1"_r$j" 10000 -1 `expr $i \* $b`
  done
done


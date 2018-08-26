for i in $(seq 1 9)
do
  for j in $(seq 1 3)
  do
    bin/kafka-run-class.sh kafka.tools.EndToEndLatency  master1:9092,master2:9092,master3:9092 test"$i""_r$j" 10000 1 100
  done
done

for i in $(seq 1 9)
do
  for j in $(seq 1 3)
  do
    bin/kafka-run-class.sh kafka.tools.EndToEndLatency  master1:9092,master2:9092,master3:9092 test"$i""_r$j" 10000 -1 100
  done
done


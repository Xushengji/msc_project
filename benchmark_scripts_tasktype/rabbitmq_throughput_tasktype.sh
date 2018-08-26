for i in $(seq 1 9)
do
    java -jar benchmarkMOM-1.0-SNAPSHOT-jar-with-dependencies.jar --threadNum $i --taskType 0 --MQ "r" --messagesNum 1000000  --exchange test1 --routingKey t1
    java -jar benchmarkMOM-1.0-SNAPSHOT-jar-with-dependencies.jar --threadNum $i --taskType 1 --MQ "r" --messagesNum 1000000  --exchange test1 --routingKey t1
    java -jar benchmarkMOM-1.0-SNAPSHOT-jar-with-dependencies.jar --threadNum $i --taskType 2 --MQ "r" --messagesNum 1000000  --exchange test1 --routingKey t1
done


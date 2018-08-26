for i in $(seq 1 9)
do
    java -jar benchmarkMOM-1.0-SNAPSHOT-jar-with-dependencies.jar --threadNum $i --taskType 0 --MQ k --messagesNum 1000000  --topics test1
    java -jar benchmarkMOM-1.0-SNAPSHOT-jar-with-dependencies.jar --threadNum $i --taskType 1 --MQ k --messagesNum 1000000  --topics test1
    java -jar benchmarkMOM-1.0-SNAPSHOT-jar-with-dependencies.jar --threadNum $i --taskType 2 --MQ k --messagesNum 1000000  --topics test1
done


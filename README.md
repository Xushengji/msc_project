# msc_project
1.All the shell scripts inside the benchmark_scripts_kafka are used for benchmarking throughput and end-to-end latency for Kafka 

2.All the shell scripts inside the benchmark_scripts_rabbitmq are used for benchmarking throughput and end-to-end latency for rabbitmq

3.If you want to benchmark throughput on the producer using our own tool, you need put the producers.properties under the root path

4.The command for benchmarking throughput on producers using our own tools is 

4.1 benchmarking Kafka:

java -jar benchmarkMOM-1.0-SNAPSHOT-jar-with-dependencies --threadNum 1 --taskType 0 --MQ k --messagesNum 10 --topics test1 

4.2 benchmarking RabbitMQ:

java -jar benchmarkMOM-1.0-SNAPSHOT-jar-with-dependencies --threadNum 1 --taskType 0 --MQ r --messagesNum 10 --exchange test1 --routingKey t1


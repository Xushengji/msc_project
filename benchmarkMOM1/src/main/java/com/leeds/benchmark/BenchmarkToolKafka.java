package com.leeds.benchmark;

import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.Producer;



import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.concurrent.CountDownLatch;

public class BenchmarkToolKafka extends BenchmarkTool {
    public Properties properties=new Properties();

    @Override
    public void exec(CountDownLatch latch,String taskType) {

        try {
            MyProducerKafka myProducerKafka = new MyProducerKafka();
            Properties kafkaProps=myProducerKafka.propertiesSet(properties);
            Producer producer=new KafkaProducer(kafkaProps);

            if(taskType.equals("0")){
                Long startTime = System.currentTimeMillis();

                for (int i = 0; i < Constants.MESSAGE_NUM/Constants.THREAD_NUM; i++) {
                    myProducerKafka.send(myProducerKafka,producer,Constants.CM);
                }
                float duration = (float) (System.currentTimeMillis() - startTime) / 1000;

                durations.add(duration);

            }else if(taskType.equals("1")){
                Long startTime = System.currentTimeMillis();
                for (int i = 0; i <Constants.MESSAGE_NUM/Constants.THREAD_NUM ; i++) {
                    myProducerKafka.send(myProducerKafka,producer,Constants.MESSAGES);
                }
                float duration = (float) (System.currentTimeMillis() - startTime) / 1000;
                durations.add(duration);

            }else if (taskType.equals("2")){
                Connection sqlConnection=myProducerKafka.connectionSet(kafkaProps);
                Statement statement=myProducerKafka.stmtSet(sqlConnection);
                Long startTime = System.currentTimeMillis();
                for (int i = 0; i < Constants.MESSAGE_NUM/Constants.THREAD_NUM; i++) {
                    myProducerKafka.send(myProducerKafka,producer,sqlConnection,statement,BenchmarkToolKafka.getResult());
                }
                float duration = (float) (System.currentTimeMillis() - startTime) / 1000;
                durations.add(duration);
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }
        finally {
            latch.countDown();
        }


    }



//    public static void main(String[] args) throws IOException {
//        new BenchmarkToolKafka().benchmark();
//
//    }
}

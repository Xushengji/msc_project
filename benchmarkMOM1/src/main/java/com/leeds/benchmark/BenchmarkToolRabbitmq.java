package com.leeds.benchmark;

import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;

import java.sql.Statement;
import java.util.Properties;
import java.util.concurrent.CountDownLatch;

public class BenchmarkToolRabbitmq extends BenchmarkTool{
    public Properties properties=new Properties();
    @Override
    public void exec(CountDownLatch latch, String taskType) {

            try{
                MyProducerRabbitmq myProducerRabbitmq=new MyProducerRabbitmq();
                Properties rabbitmqProps=myProducerRabbitmq.propertiesSet(properties);
                ConnectionFactory connectionFactory = myProducerRabbitmq.factorySet(rabbitmqProps);

                Connection connection =myProducerRabbitmq.connectionRabitmqSet(connectionFactory);
                Channel channel = myProducerRabbitmq.channelSet(connection);

                if(taskType.equals("0")){
                    Long startTime = System.currentTimeMillis();
                    for (int i = 0; i < Constants.MESSAGE_NUM/Constants.THREAD_NUM; i++) {
                        myProducerRabbitmq.send(rabbitmqProps,myProducerRabbitmq,channel,Constants.CM);
                    }
                    float duration = (float) (System.currentTimeMillis() - startTime) / 1000;
                    durations.add(duration);

                }else if(taskType.equals("1")){
                    Long startTime = System.currentTimeMillis();
                    for (int i = 0; i < Constants.MESSAGE_NUM/Constants.THREAD_NUM; i++) {
                        myProducerRabbitmq.send(rabbitmqProps,myProducerRabbitmq,channel,Constants.MESSAGES);
                    }
                    float duration = (float) (System.currentTimeMillis() - startTime) / 1000;
                    durations.add(duration);

                }else if (taskType.equals("2")){
                    java.sql.Connection sqlConnection=myProducerRabbitmq.connectionSet(rabbitmqProps);
                    Statement statement=myProducerRabbitmq.stmtSet(sqlConnection);
                    Long startTime = System.currentTimeMillis();
                    for (int i = 0; i <Constants.MESSAGE_NUM/Constants.THREAD_NUM ; i++) {
                        myProducerRabbitmq.send(rabbitmqProps,myProducerRabbitmq,channel,sqlConnection,statement,BenchmarkToolRabbitmq.getResult());
                        float duration = (float) (System.currentTimeMillis() - startTime) / 1000;
                        durations.add(duration);
                    }
                }
                channel.close();
                connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }finally {
                latch.countDown();
            }

    }


}

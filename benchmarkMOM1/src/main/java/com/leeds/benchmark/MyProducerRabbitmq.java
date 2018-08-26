package com.leeds.benchmark;

import com.rabbitmq.client.AMQP;
import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;


import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import java.util.concurrent.TimeoutException;

public class MyProducerRabbitmq extends MyProducer{
    @Override
    public Properties propertiesSet(Properties properties) {
        PropertiesUtil propertiesUtil=new PropertiesUtil();
        properties=propertiesUtil.getProperties(Constants.CONFIGURE_NAME);

        properties.setProperty(Constants.HOST_RABBITMQ,properties.getProperty(Constants.HOST_RABBITMQ,Constants.DEAFUALT_HOST_RABBITMQ_VALUE));
        properties.setProperty(Constants.PORT_RABBITMQ,properties.getProperty(Constants.PORT_RABBITMQ,Constants.DEAFUALT_PORT_RABBITMQ_VALUE));
        properties.setProperty(Constants.USERNAME_RABBITMQ,properties.getProperty(Constants.USERNAME_RABBITMQ,Constants.DEAFUALT_USERNAME_RABBITMQ_VALUE));
        properties.setProperty(Constants.PASSWORD_RABBITMQ,properties.getProperty(Constants.PASSWORD_RABBITMQ,Constants.DEAFUALT_PASSWORD_RABBITMQ_VALUE));
        properties.setProperty(Constants.EXCHANGE_NAME,Constants.DEFAULT_EXCHANGE_NAME_VALUE);
        properties.setProperty(Constants.ROUTING_KEY,Constants.DEFAULT_ROUTING_KEY_VALUE);
        System.out.println(properties.getProperty(Constants.USERNAME_RABBITMQ,Constants.DEAFUALT_USERNAME_RABBITMQ_VALUE));

        return properties;
    }

    public ConnectionFactory factorySet(Properties properties){
        ConnectionFactory factory=new ConnectionFactory();
        factory.setHost(properties.getProperty(Constants.HOST_RABBITMQ,Constants.DEAFUALT_HOST_RABBITMQ_VALUE));
        factory.setPort(Integer.valueOf(properties.getProperty(Constants.PORT_RABBITMQ,Constants.DEAFUALT_PORT_RABBITMQ_VALUE)));
        factory.setUsername(properties.getProperty(Constants.USERNAME_RABBITMQ,Constants.DEAFUALT_USERNAME_RABBITMQ_VALUE));
        factory.setPassword(properties.getProperty(Constants.PASSWORD_RABBITMQ,Constants.DEAFUALT_PASSWORD_RABBITMQ_VALUE));

        return factory;
    }

    public Connection connectionRabitmqSet(ConnectionFactory connectionFactory) throws TimeoutException,IOException {
        Connection connection=connectionFactory.newConnection();
        return connection;
    }
    public Channel channelSet(Connection connection) throws IOException{

        Channel channel=connection.createChannel();
        return channel;
    }

    public AMQP.BasicProperties basicPropertiesSet(){
        AMQP.BasicProperties basicProperties =new AMQP.BasicProperties.Builder().deliveryMode(2).contentEncoding("UTF-8").build();
        return basicProperties;
    }

    public boolean send(Properties properties,MyProducerRabbitmq myProducerRabbitmq,Channel channel,Double CM)   {

        try{
            Double INCH=myProducerRabbitmq.metricTransfer(CM);
            channel.basicPublish(properties.getProperty(Constants.EXCHANGE_NAME),properties.getProperty(Constants.ROUTING_KEY),myProducerRabbitmq.basicPropertiesSet(),INCH.toString().getBytes());
            return true;
        }catch (IOException e){
            e.printStackTrace();
        }
        return false;
    }

    public boolean send(Properties properties,MyProducerRabbitmq myProducerRabbitmq,Channel channel,String MESSAGES){
        try{
            String MESSAGES_ENCRYPTION=myProducerRabbitmq.encyptionTransfer(MESSAGES);
            channel.basicPublish(properties.getProperty(Constants.EXCHANGE_NAME),properties.getProperty(Constants.ROUTING_KEY),myProducerRabbitmq.basicPropertiesSet(),MESSAGES_ENCRYPTION.getBytes());
            return true;
        }catch (IOException e){
            e.printStackTrace();
        }catch (NoSuchAlgorithmException e){
            e.printStackTrace();
        }
        return false;
    }

    @SuppressWarnings("unchecked")
    public boolean send(Properties properties,MyProducerRabbitmq myProducerRabbitmq, Channel channel, java.sql.Connection connSql, Statement stmt, ArrayList<Integer> arrayList){
        try{
            ArrayList<Integer> arr=myProducerRabbitmq.dbTransfer(stmt,connSql,arrayList);
            channel.basicPublish(properties.getProperty(Constants.EXCHANGE_NAME),properties.getProperty(Constants.ROUTING_KEY),myProducerRabbitmq.basicPropertiesSet(),arr.get(0).toString().getBytes());
            return true;

        }catch (SQLException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }

        return false;
    }



}

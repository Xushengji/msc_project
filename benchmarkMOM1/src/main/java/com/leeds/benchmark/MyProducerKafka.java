package com.leeds.benchmark;


import org.apache.kafka.clients.producer.Producer;
import org.apache.kafka.clients.producer.ProducerConfig;
import org.apache.kafka.clients.producer.ProducerRecord;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

public class MyProducerKafka extends MyProducer{
    @Override
    public Properties propertiesSet(Properties properties) {
        PropertiesUtil propertiesUtil=new PropertiesUtil();
        properties=propertiesUtil.getProperties(Constants.CONFIGURE_NAME);

        properties.setProperty(ProducerConfig.BOOTSTRAP_SERVERS_CONFIG,properties.getProperty(Constants.BOOSTRAP_SERVER,Constants.DEFAULT_BOOSTRAP_SERVER_VALUE));
        properties.setProperty(ProducerConfig.KEY_SERIALIZER_CLASS_CONFIG,properties.getProperty(Constants.KEY_SERIALIZER_CLASS,Constants.DEFAULT_KEY_SERIALIZER_CLASS_VALUE));
        properties.setProperty(ProducerConfig.VALUE_SERIALIZER_CLASS_CONFIG,properties.getProperty(Constants.VALUE_SERIALIZER_CLASS,Constants.DEFAULT_VALUE_SERIALIZER_CLASS_VALUE));
        properties.setProperty(ProducerConfig.ACKS_CONFIG,properties.getProperty(Constants.ACKS,Constants.DEFAULT_ACKS_VALUE));
        properties.setProperty(ProducerConfig.RETRIES_CONFIG,properties.getProperty(Constants.RETIRES,Constants.DEFAULT_RETIRES_VALUE));
        properties.setProperty(ProducerConfig.LINGER_MS_CONFIG,properties.getProperty(Constants.LINGER_MS,Constants.DEFAULT_LINGER_MS_VALUE));
        properties.setProperty(ProducerConfig.BATCH_SIZE_CONFIG,properties.getProperty(Constants.BATCH_SIZE,Constants.DEFAULT_BATCH_SIZE_VALUE));
        properties.setProperty(ProducerConfig.BUFFER_MEMORY_CONFIG,properties.getProperty(Constants.BUFFER_MEMORY,Constants.DEFAULT_BUFFER_MEMORY_VALUE));
        properties.setProperty(ProducerConfig.COMPRESSION_TYPE_CONFIG,properties.getProperty(Constants.COMPRESSION_TYPE,Constants.DEFAULT_COMPRESSION_TYPE_VALUE));

        properties.setProperty(Constants.JDBC_DRIVER,properties.getProperty(Constants.JDBC_DRIVER,Constants.DEAFUALT_JDBC_DRIVER_VALUE));
        properties.setProperty(Constants.DB_URL,properties.getProperty(Constants.DB_URL,Constants.DEAFUALT_DB_URL_VALUE));
        properties.setProperty(Constants.DB_USER,properties.getProperty(Constants.DB_USER,Constants.DEAFUALT_DB_USER_VALUE));
        properties.setProperty(Constants.DB_PASS,properties.getProperty(Constants.DB_PASS,Constants.DEAFUALT_DB_PASS_VALUE));




        return properties;
    }

    public boolean send(MyProducerKafka myProducerKafka,Producer producer,Double CM){
        try{
            Double INCH=myProducerKafka.metricTransfer(CM);
            ProducerRecord<String,String> producerRecord=new ProducerRecord<String,String>(Constants.TOPICS,INCH.toString());
            producer.send(producerRecord);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return true;
    }

    public boolean send(MyProducerKafka myProducerKafka,Producer producer,String MESSAGES){
        try {
            String MESSAGES_ENCRYPTION = myProducerKafka.encyptionTransfer(MESSAGES);
            ProducerRecord<String,String> producerRecord=new ProducerRecord<String,String>(Constants.TOPICS,MESSAGES_ENCRYPTION);
            producer.send(producerRecord);
            return true;
        }catch (NoSuchAlgorithmException e){
            e.printStackTrace();
        }
        return false;

    }

    @SuppressWarnings("unchecked")
    public boolean send(MyProducerKafka myProducerKafka, Producer producer, Connection connsql, Statement stmt, ArrayList<Integer> arrayList){
        try {
            ArrayList<Integer> arr=myProducerKafka.dbTransfer(stmt,connsql,arrayList);
            ProducerRecord<String,String> producerRecord=new ProducerRecord<String,String>(Constants.TOPICS,arr.get(0).toString());
            producer.send(producerRecord);
            return true;
        }  catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


}



package com.leeds.benchmark;


public class Constants {

    //APACHE KAFKA KEY
    public static final String ACKS="acks";

    public static final String BATCH_SIZE="batch.size";

    public static final String RETIRES="retries";

    public final static String LINGER_MS="linger.ms";

    public final static String BUFFER_MEMORY="buffer.memory";

    public final static String COMPRESSION_TYPE="compression.type";

    public final static String BOOSTRAP_SERVER="bootstrap.servers";

    public final static String KEY_SERIALIZER_CLASS="key.serializer";

    public final static String VALUE_SERIALIZER_CLASS="value.serializer";



    //APACHE KAFKA VALUE
    public static final String DEFAULT_ACKS_VALUE="0";

    public static final String DEFAULT_BATCH_SIZE_VALUE="0";

    public static final String DEFAULT_RETIRES_VALUE="0";

    public final static String DEFAULT_LINGER_MS_VALUE="0";

    public final static String DEFAULT_BUFFER_MEMORY_VALUE="67108864";

    public final static String DEFAULT_COMPRESSION_TYPE_VALUE="none";

    public final static String DEFAULT_BOOSTRAP_SERVER_VALUE="10.132.0.2:9092";

    public final static String DEFAULT_KEY_SERIALIZER_CLASS_VALUE="org.apache.kafka.common.serialization.StringSerializer";

    public final static String DEFAULT_VALUE_SERIALIZER_CLASS_VALUE="org.apache.kafka.common.serialization.StringSerializer";


    public static final String CONFIGURE_NAME="producers.properties";


    //RabbitMQ
    public static final String HOST_RABBITMQ="rabbitmq.host";

    public static final String PORT_RABBITMQ="rabbitmq.port";

    public static final String USERNAME_RABBITMQ="rabbitmq.username";

    public static final String PASSWORD_RABBITMQ="rabbitmq.password";


    public static final String DEAFUALT_HOST_RABBITMQ_VALUE="10.132.0.6";

    public static final String DEAFUALT_PORT_RABBITMQ_VALUE="5672";

    public static final String DEAFUALT_USERNAME_RABBITMQ_VALUE="jxs";


    public static final String DEAFUALT_PASSWORD_RABBITMQ_VALUE="jxs";

    //MySQL



    public static final String JDBC_DRIVER = "jdbc.driver";

    public static final String DB_URL = "db.url";

    public static final String DB_USER = "db.users";

    public static final String DB_PASS = "db.pass";


    public static final String DEAFUALT_JDBC_DRIVER_VALUE = "com.mysql.jdbc.Driver";

    public static final String DEAFUALT_DB_URL_VALUE = "jdbc:mysql://10.132.0.6:3306/student?autoReconnect=true";

    public static final String DEAFUALT_DB_USER_VALUE = "root";

    public static final String DEAFUALT_DB_PASS_VALUE = "root";


    //Benchmark variables
    public static String TOPICS;

    public static Integer THREAD_NUM;

    public static Integer MESSAGE_NUM;

    public static String TASK_TYPE;

    public static String EXCHANGE_NAME="exchange";

    public static String ROUTING_KEY="routing_key";

    public static String DEFAULT_EXCHANGE_NAME_VALUE;

    public static String DEFAULT_ROUTING_KEY_VALUE;

    public static final String KEY_SHA="SHA";

    public static final Double CM=1.0;

    public static final String MESSAGES="1";







}

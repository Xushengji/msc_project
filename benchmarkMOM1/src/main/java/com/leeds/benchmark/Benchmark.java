package com.leeds.benchmark;

import net.sourceforge.argparse4j.ArgumentParsers;
import net.sourceforge.argparse4j.impl.action.StoreArgumentAction;
import net.sourceforge.argparse4j.inf.ArgumentAction;
import net.sourceforge.argparse4j.inf.ArgumentParser;
import net.sourceforge.argparse4j.inf.Namespace;


public class Benchmark {

    public static void main(String[] args) {

        ArgumentParser parser=argParser();

        try {

            Namespace res=parser.parseArgs(args);
            Constants.THREAD_NUM=Integer.valueOf(res.getString("threadNum"));
            Constants.TASK_TYPE=res.getString("taskType");
            Constants.MESSAGE_NUM=Integer.valueOf(res.getString("messagesNum"));
            Constants.TOPICS=res.getString("topics");
            Constants.DEFAULT_EXCHANGE_NAME_VALUE=res.getString("exchange");
            Constants.DEFAULT_ROUTING_KEY_VALUE=res.getString("routingKey");
            String mqType=res.getString("MQ");

            if (mqType.equals("k")&&Constants.TOPICS!=null){
                new BenchmarkToolKafka().benchmark();

            }else if(mqType.equals("r")&& Constants.DEFAULT_EXCHANGE_NAME_VALUE!=null&&Constants.DEFAULT_ROUTING_KEY_VALUE!=null){
                new BenchmarkToolRabbitmq().benchmark();
            }else if (mqType.equals("k")&& Constants.TOPICS==null){
                System.out.println("Missing the Topics as benchmarking Kafka");
            }else if (mqType.equals("r")&&(Constants.DEFAULT_EXCHANGE_NAME_VALUE==null||Constants.DEFAULT_ROUTING_KEY_VALUE==null)){
                System.out.println("Missing the exchange name or routing key as benchmarking RabbitMQ");

            }

        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    private static ArgumentParser argParser(){
        ArgumentAction argumentAction=new StoreArgumentAction();
        ArgumentParser parser= ArgumentParsers
                .newArgumentParser("producer-performance")
                .defaultHelp(true)
                .description("Throughput");

        parser.addArgument("--threadNum")
                .help("How many thread number")
                .action(argumentAction)
                .required(true)
                .type(String.class)
                .metavar("THREAD_NUM");

        parser.addArgument("--taskType")
                .help("0 represents simple tasks,1 represents CPU Bound and 2 represent I/O Bound")
                .action(argumentAction)
                .required(true)
                .type(String.class)
                .metavar("TASK_TYPE");
        parser.addArgument("--MQ")
                .help("r represents RabbitMQ and K represents Kafka")
                .required(true)
                .type(String.class)
                .metavar("MESSAGE_QUEUE");
        parser.addArgument("--messagesNum")
                .help("the number of  messages")
                .required(true)
                .type(String.class)
                .metavar("MESSAGE_NUM");
        parser.addArgument("--topics")
                .help("topics only need when benchmarking Kafka ")
                .required(false)
                .type(String.class)
                .metavar("TOPICS");
        parser.addArgument("--exchange")
                .help("exchange only need when benchmarking RabbitMQ ")
                .required(false)
                .type(String.class)
                .metavar("EXCHANGES");
        parser.addArgument("--routingKey")
                .help("routing Key only need when benchmarking RabbitMQ ")
                .required(false)
                .type(String.class)
                .metavar("ROUTING_KEY");

        return parser;

    }

}

package com.leeds.benchmark;


import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class BenchmarkTool {
    public static CountDownLatch latch = new CountDownLatch(Constants.THREAD_NUM);
    public static ArrayList<Float> durations=new ArrayList<Float>();
    public static ArrayList<Integer> result=new ArrayList<Integer>();


    public static ArrayList<Integer> getResult() {
        return result;
    }

    public abstract void exec(CountDownLatch latch, String taskType);

    public void benchmark(){
        ExecutorService executor = Executors.newFixedThreadPool(Constants.THREAD_NUM);

        try {
            for (int i = 0; i < Constants.THREAD_NUM; i++) {
                executor.submit(new Runnable() {
                    public void run() {
                        exec(latch,Constants.TASK_TYPE);
                    }
                });
            }
            latch.await();
            Float wholeDuration = Collections.max(durations);
            System.out.println("the whole time is " + wholeDuration + " s");
            System.out.println("the final tps is " + Constants.MESSAGE_NUM * Constants.THREAD_NUM / wholeDuration + " msg/s");
            executor.shutdown();
            System.out.println("service has been shut down");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}

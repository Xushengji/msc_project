##################################with autoack#################################

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1  --pmessages 100000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1 --cmessages 100000 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t2 --queue test2  --pmessages 100000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1,test2 --cmessages 200000 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t3 --queue test3  --pmessages 100000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1,test2,test3 --cmessages 300000 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t4 --queue test4  --pmessages 100000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1,test2,test3,test4 --cmessages 400000 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t5 --queue test6  --pmessages 100000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1,test2,test3,test4,test5 --cmessages 500000 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t6 --queue test6  --pmessages 100000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1,test2,test3,test4,test5,test6 --cmessages 600000 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t7 --queue test7  --pmessages 100000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1,test2,test3,test4,test5,test6,test7 --cmessages 700000 --predeclared --autoack 
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t8 --queue test8  --pmessages 100000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1,test2,test3,test4,test5,test6,test7,test8 --cmessages 800000 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t9 --queue test9  --pmessages 100000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1,test2,test3,test4,test5,test6,test7,test8,test9 --cmessages 900000 --predeclared --autoack

###################################without autoack#########################################


bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1  --pmessages 10000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1 --cmessages 10000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t2 --queue test2  --pmessages 10000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1,test2 --cmessages 20000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t3 --queue test3  --pmessages 10000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1,test2,test3 --cmessages 30000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t4 --queue test4  --pmessages 10000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1,test2,test3,test4 --cmessages 40000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t5 --queue test6  --pmessages 10000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1,test2,test3,test4,test5 --cmessages 50000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t6 --queue test6  --pmessages 10000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1,test2,test3,test4,test5,test6 --cmessages 60000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t7 --queue test7  --pmessages 10000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1,test2,test3,test4,test5,test6,test7 --cmessages 70000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t8 --queue test8  --pmessages 10000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1,test2,test3,test4,test5,test6,test7,test8 --cmessages 80000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t9 --queue test9  --pmessages 10000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1,test2,test3,test4,test5,test6,test7,test8,test9 --cmessages 90000 --predeclared







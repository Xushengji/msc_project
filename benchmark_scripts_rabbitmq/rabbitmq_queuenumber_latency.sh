bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 1 exchange test1 --routing-key t1 -queue test1  --pmessages 10000  --predeclared  --confirm 1 --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 1 exchange test1 --routing-key t2 -queue test1,test2  --pmessages 5000 --predeclared  --confirm 1 --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 1 exchange test1 --routing-key t3 -queue test1,test2,test3  --pmessages 3333  --predeclared  --confirm 1 --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 1 exchange test1 --routing-key t4 -queue test1,test2,test3,test4  --pmessages 2500  --predeclared  --confirm 1 --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 1 exchange test1 --routing-key t5 -queue test1,test2,test3,test4,test5  --pmessages 2000  --predeclared  --confirm 1 --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 1 exchange test1 --routing-key t6 -queue test1,test2,test3,test4,test5,test6  --pmessages 1670  --predeclared  --confirm 1 --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 1 exchange test1 --routing-key t7 -queue test1,test2,test3,test4,test5,test6,test7  --pmessages 1430  --predeclared  --confirm 1 --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 1 exchange test1 --routing-key t8 -queue test1,test2,test3,test4,test5,test6,test7,test8  --pmessages 1250  --predeclared  --confirm 1 --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 1 exchange test1 --routing-key t9 -queue test1,test2,test3,test4,test5,test6,test7,test8,test9  --pmessages 1111  --predeclared  --confirm 1 --autoack




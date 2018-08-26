
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t2 --size 100  --pmessages 500000 --predeclared 
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t3 --size 100  --pmessages 333333 --predeclared 
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t4 --size 100  --pmessages 250000 --predeclared 
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
sudo rabbitmqctl purge_queue test4
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t5 --size 100  --pmessages 333333 --predeclared 
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
sudo rabbitmqctl purge_queue test4
sudo rabbitmqctl purge_queue test5
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t6 --size 100  --pmessages 333333 --predeclared 
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
sudo rabbitmqctl purge_queue test4
sudo rabbitmqctl purge_queue test5
sudo rabbitmqctl purge_queue test6
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t7 --size 100  --pmessages 333333 --predeclared 
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
sudo rabbitmqctl purge_queue test4
sudo rabbitmqctl purge_queue test5
sudo rabbitmqctl purge_queue test6
sudo rabbitmqctl purge_queue test7
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t8 --size 100  --pmessages 333333 --predeclared
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
sudo rabbitmqctl purge_queue test4
sudo rabbitmqctl purge_queue test5
sudo rabbitmqctl purge_queue test6
sudo rabbitmqctl purge_queue test7
sudo rabbitmqctl purge_queue test8
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t9 --size 100  --pmessages 333333 --predeclared 
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
sudo rabbitmqctl purge_queue test4
sudo rabbitmqctl purge_queue test5

################confirmation#######################################



bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t2 --size 100  --pmessages 5000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t3 --size 100  --pmessages 3333 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t4 --size 100  --pmessages 2500 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
sudo rabbitmqctl purge_queue test4
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t5 --size 100  --pmessages 3333 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
sudo rabbitmqctl purge_queue test4
sudo rabbitmqctl purge_queue test5
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t6 --size 100  --pmessages 1670 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
sudo rabbitmqctl purge_queue test4
sudo rabbitmqctl purge_queue test5
sudo rabbitmqctl purge_queue test6
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t7 --size 100  --pmessages 1420 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
sudo rabbitmqctl purge_queue test4
sudo rabbitmqctl purge_queue test5
sudo rabbitmqctl purge_queue test6
sudo rabbitmqctl purge_queue test7
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t8 --size 100  --pmessages 1250 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
sudo rabbitmqctl purge_queue test4
sudo rabbitmqctl purge_queue test5
sudo rabbitmqctl purge_queue test6
sudo rabbitmqctl purge_queue test7
sudo rabbitmqctl purge_queue test8
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t9 --size 100  --pmessages 1111 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
sudo rabbitmqctl purge_queue test2
sudo rabbitmqctl purge_queue test3
sudo rabbitmqctl purge_queue test4
sudo rabbitmqctl purge_queue test5

#####################################confirmation############################
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1000 --size 100  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t2000 --size 100  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test2000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t3000 --size 100  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test3000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t4000 --size 100  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test4000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t5000 --size 100  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test5000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t6000 --size 100  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test6000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t7000 --size 100  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test7000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t8000  --size 100 --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test8000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t9000 --size 100  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test9000

#################################no confirmation####################################



bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1000 --size 100  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test1000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t2000 --size 100  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test2000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t3000 --size 100  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test3000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t4000 --size 100  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test4000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t5000 --size 100  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test5000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t6000 --size 100  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test6000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t7000 --size 100  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test7000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t8000  --size 100 --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test8000
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t9000 --size 100  --pmessages 1000000 --predeclared
sudo rabbitmqctl purge_queue test9000
















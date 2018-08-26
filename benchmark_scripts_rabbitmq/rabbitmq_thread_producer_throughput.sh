###################################confirmation ###############################
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 2 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 5000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 3 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 3333 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 4 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 2500 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 5 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 2000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 6 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 1670 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 7 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 1430 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 8 --consumers 0 --exchange test1 --routing-key t1  --size 100 --pmessages 1250 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 9 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 1111 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 10 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 1000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1

###################################disable confirmation ####################################

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1  --pmessages 1000000 --predeclared
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 2 --consumers 0 --exchange test1 --routing-key t1  --pmessages 500000 --predeclared 
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 3 --consumers 0 --exchange test1 --routing-key t1  --pmessages 333333 --predeclared
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 4 --consumers 0 --exchange test1 --routing-key t1  --pmessages 250000 --predeclared 
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 5 --consumers 0 --exchange test1 --routing-key t1  --pmessages 200000 --predeclared
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 6 --consumers 0 --exchange test1 --routing-key t1  --pmessages 167000 --predeclared 
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 7 --consumers 0 --exchange test1 --routing-key t1  --pmessages 143000 --predeclared 
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 8 --consumers 0 --exchange test1 --routing-key t1  --pmessages 125000 --predeclared 
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 9 --consumers 0 --exchange test1 --routing-key t1  --pmessages 111111 --predeclared
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 10 --consumers 0 --exchange test1 --routing-key t1  --pmessages 100000 --predeclared
sudo rabbitmqctl purge_queue test1















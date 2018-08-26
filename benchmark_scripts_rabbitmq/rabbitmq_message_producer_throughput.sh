
#######################################enable confirmation##########################################
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 200  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 300  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 400  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 500  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 600  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 700  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1  --size 800 --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 900  --pmessages 10000 --predeclared --confirm 1
sudo rabbitmqctl purge_queue test1

###########################################disable confirmation############################

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 200  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 300  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 400  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 500  --pmessages 1000000 --predeclared
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 600  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 700  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1  --size 800 --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test1
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 900  --pmessages 1000000 --predeclared 
sudo rabbitmqctl purge_queue test1















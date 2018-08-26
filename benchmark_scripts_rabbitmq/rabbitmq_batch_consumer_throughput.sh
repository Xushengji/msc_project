bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 100000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 10000 --predeclared  -q 1000

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 10000 --predeclared  -q 2000

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 10000 --predeclared  -q 3000

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 10000 --predeclared  -q 4000

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 10000 --predeclared  -q 5000

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 10000 --predeclared  -q 6000

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 10000 --predeclared  -q 7000

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 10000 --predeclared  -q 8000

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 10000 --predeclared  -q 9000

#####################################enable auto ack###############################


bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 1000000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 100000 --predeclared  -q 1000 --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 100000 --predeclared  -q 2000 --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 100000 --predeclared  -q 3000 --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 100000 --predeclared  -q 4000 --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 100000 --predeclared  -q 5000 --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 100000 --predeclared  -q 6000 --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 100000 --predeclared  -q 7000 --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 100000 --predeclared  -q 8000 --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --exchange test1 --routing-key t1 --queue test1 --cmessages 100000 --predeclared  -q 9000 --autoack











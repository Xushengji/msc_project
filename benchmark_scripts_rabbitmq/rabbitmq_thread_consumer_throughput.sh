bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1  --pmessages 100000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1 --cmessages 10000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 2  --queue test1 --cmessages 5000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 3 --queue test1 --cmessages 3333 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 4  --queue test1 --cmessages 2500 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 5  --queue test1 --cmessages 2000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 6  --queue test1 --cmessages 1670 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 7  --queue test1 --cmessages 1420 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 8 --queue test1 --cmessages 1111 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 9 --queue test1 --cmessages 1000 --predeclared
#bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1 --cmessages 100000 --predeclared

############################no autoack##############################


bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1  --pmessages 1000000 --predeclared
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1 --cmessages 100000 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 2  --queue test1 --cmessages 50000 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 3 --queue test1 --cmessages 33333 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 4  --queue test1 --cmessages 25000 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 5  --queue test1 --cmessages 20000 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 6  --queue test1 --cmessages 16700 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 7  --queue test1 --cmessages 14200 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 8 --queue test1 --cmessages 11111 --predeclared --autoack
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 9 --queue test1 --cmessages 10000 --predeclared --autoack
#bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1  --queue test1 --cmessages 100000 --predeclared



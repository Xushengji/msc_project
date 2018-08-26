################################################disable autoAck################################
bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 10000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 100 --cmessages 10000 --predeclared

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 200  --pmessages 10000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 200 --cmessages 10000 --predeclared

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 300  --pmessages 10000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 300 --cmessages 10000 --predeclared

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 400  --pmessages 10000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 400 --cmessages 10000 --predeclared

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 500  --pmessages 10000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 500 --cmessages 10000 --predeclared

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 600  --pmessages 10000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 600 --cmessages 10000 --predeclared

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 700  --pmessages 10000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 700 --cmessages 10000 --predeclared

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 800  --pmessages 10000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 800 --cmessages 10000 --predeclared

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 900  --pmessages 10000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 900 --cmessages 10000 --predeclared

################################################enable autoAck################################

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 100  --pmessages 100000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 100 --cmessages 100000 --predeclared --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 200  --pmessages 100000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 200 --cmessages 100000 --predeclared --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 300  --pmessages 100000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 300 --cmessages 100000 --predeclared --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 400  --pmessages 100000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 400 --cmessages 100000 --predeclared --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 500  --pmessages 100000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 500 --cmessages 100000 --predeclared --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 600  --pmessages 100000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 600 --cmessages 100000 --predeclared --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 700  --pmessages 100000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 700 --cmessages 100000 --predeclared --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 800  --pmessages 100000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 800 --cmessages 100000 --predeclared --autoack

bin/runjava com.rabbitmq.perf.PerfTest --producers 1 --consumers 0 --exchange test1 --routing-key t1 --size 900  --pmessages 100000 --predeclared 
bin/runjava com.rabbitmq.perf.PerfTest --producers 0 --consumers 1 --queue test1 --size 900 --cmessages 100000 --predeclared --autoack










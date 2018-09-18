#! /bin/bash

echo "Default is 10,000 Requests fired at 1 concurrency level and max wait of 1 sec per response and sleep for 60 secs in between tests"

i="0"

while [ $i -lt 6 ]
do

sleep 60s
val=$(( 24000 + i ))
echo "Connecting to http://localhost:$val/hello"
ab -n 10000 -c 1 -s 1 http://localhost:$val/hello
i=$[$i+1]

done

echo "Test complete!!!"

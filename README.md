# Summary:
This work is foundational and intended to be used as part of other extended work.

This repo has a simple http server implemented in languages that are popular in Microservices based platforms - The server responds with a http/200 and a Hello text message of 21 bytes in response to requests on /hello.

## Run
```
docker-compose -f docker-compose.yml up -d
```

## Test
```
./ab.sh

Default is 10,000 Requests fired at 10 concurrency level and max wait of 1 sec per response and sleep for 60 secs before invoking the next runtime
```

## Screen Prints
![Alt text](docker-ps.png?raw=true "docker ps")
![Alt text](docker-stats.png?raw=true "docker stats")
![Alt text](docker-images.png?raw=true "docker images")
![Alt text](ContainerStats.png?raw=true "container stats")
![Alt text](MemoryUsage.png?raw=true "memory usage")

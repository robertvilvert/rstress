#### RSTRESS

Simple ruby code to set hash on redis.


###### ENVs

* LOOPX     = quantity of redis hset
* LOG       = set 1 to debug mode
* REDIS_URL = E.g: "redis://:p4ssw0rd@10.0.1.1:6380/0"


###### Running on docker

```
docker run -e LOOPX=101 -e LOG=1 -it robertvilvert/rstress

```

###### Extras

* bash

```
docker run -it robertvilvert/rstress bash

```

* Redis Benchmark

```
docker run -it robertvilvert/rstress redis-benchmark -h ip/or/host

```

* Redis cli

```
docker run -it robertvilvert/rstress redis-cli -h ip/or/host

```

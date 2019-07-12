#!/bin/bash

docker run --network="host" -d -p 7000:7000 pablo-redis 7000
docker run --network="host" -d -p 7001:7001 pablo-redis 7001
docker run --network="host" -d -p 7002:7002 pablo-redis 7002
docker run --network="host" -d -p 7003:7003 pablo-redis 7003
docker run --network="host" -d -p 7004:7004 pablo-redis 7004
docker run --network="host" -d -p 7005:7005 pablo-redis 7005

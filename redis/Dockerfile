FROM ubuntu:latest AS builder
RUN apt-get update -y
RUN apt-get install build-essential curl -y

RUN mkdir /opt/redis_build
WORKDIR /opt/redis_build

RUN curl http://download.redis.io/releases/redis-5.0.5.tar.gz | tar -xvzf - --strip 1
RUN make

FROM ubuntu:latest
ARG PORT=7000
RUN mkdir /opt/redis
WORKDIR /opt/redis
COPY --from=builder /opt/redis_build/src/redis-server .
COPY redis.conf .
ENTRYPOINT [ "./redis-server", "./redis.conf", "--protected-mode no", "--port" ]
CMD [ "${PORT}" ]
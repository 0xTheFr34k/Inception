FROM debian:buster AS redis

EXPOSE 6379

RUN apt-get update && apt-get install -y redis-server php-redis

COPY ./conf/ /etc/redis/

CMD [ "redis-server" , "--protected-mode", "no"]
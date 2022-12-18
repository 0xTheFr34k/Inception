FROM debian:buster AS wordpress

EXPOSE 9000

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d

RUN apt-get update && apt-get -y upgrade

RUN apt-get -y install php7.3 php-mysqli php-fpm curl mariadb-client

RUN mkdir -p /run/php/

COPY ./tools ./var/www/html

RUN chmod +x ./var/www/html/setup.sh && ./var/www/html/setup.sh

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
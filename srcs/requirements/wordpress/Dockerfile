FROM debian:buster AS wordpress

EXPOSE 9000

RUN apt-get update

RUN apt-get -y install php7.3 php-mysqli php-fpm wget mariadb-client sendmail

RUN mkdir -p /run/php/


COPY ./conf/ /etc/php/7.3/fpm/pool.d/

COPY ./tools ./tmp

RUN mkdir -p /var/www/html


WORKDIR /tmp

RUN chmod +x setup.sh

WORKDIR /var/www/html

# USER www-data

ENTRYPOINT [ "sh","/tmp/setup.sh" ]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
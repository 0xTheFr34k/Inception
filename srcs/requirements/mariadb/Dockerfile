FROM debian:buster AS mariadb

EXPOSE 3306

RUN apt-get update && apt-get install -y procps 

RUN apt update && apt install -y mariadb-server

COPY ./conf/mariadb.conf /etc/mysql/mariadb.conf.d/

COPY ./conf/mysql_db.conf /var/www/mysql_db.conf

RUN service mysql start && mysql < /var/www/mysql_db.conf;

CMD [ "mysqld" ]
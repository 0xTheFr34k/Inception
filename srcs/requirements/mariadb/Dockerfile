FROM debian:buster AS mariadb

EXPOSE 3306 

RUN apt update && apt install -y mariadb-server

COPY ./conf/50-server.conf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./conf/mysql_db.conf /var/www/mysql_db.conf

RUN service mysql start && mysql < /var/www/mysql_db.conf;

CMD [ "mysqld" ]
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ytaya <ytaya@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/29 04:51:41 by ytaya             #+#    #+#              #
#    Updated: 2022/12/29 04:51:42 by ytaya            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster AS mariadb

EXPOSE 3306 

RUN apt update && apt install -y mariadb-server

COPY ./conf/50-server.conf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./conf/mysql_db.conf /var/www/mysql_db.conf

RUN service mysql start && mysql < /var/www/mysql_db.conf;

CMD [ "mysqld" ]
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ytaya <ytaya@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/29 04:53:00 by ytaya             #+#    #+#              #
#    Updated: 2022/12/29 04:53:03 by ytaya            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get install -y wget apache2 adminer

RUN service apache2 start

RUN mkdir -p /var/www/html

RUN wget --no-check-certificate https://www.adminer.org/latest.php -O /var/www/html/index.php


EXPOSE 8080

CMD ["php","-S","[::]:8080","-t","/var/www/html"]
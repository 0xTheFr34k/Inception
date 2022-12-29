# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ytaya <ytaya@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/29 04:52:27 by ytaya             #+#    #+#              #
#    Updated: 2022/12/29 04:52:28 by ytaya            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster AS static_website

RUN  apt-get update && apt-get install -y php

RUN mkdir -p /var/www/html/

COPY ./public_html/ ./var/www/html/

EXPOSE 5555

WORKDIR /var/www/html

CMD ["php","-S","[::]:5555","-t","/var/www/html"]
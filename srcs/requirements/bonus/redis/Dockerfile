# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ytaya <ytaya@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/29 04:52:36 by ytaya             #+#    #+#              #
#    Updated: 2022/12/29 04:52:37 by ytaya            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster AS redis

EXPOSE 6379

RUN apt-get update && apt-get install -y redis-server php-redis

COPY ./conf/ /etc/redis/

CMD [ "redis-server" , "--protected-mode", "no"]
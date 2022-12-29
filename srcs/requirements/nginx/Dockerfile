# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ytaya <ytaya@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/29 04:51:35 by ytaya             #+#    #+#              #
#    Updated: 2022/12/29 04:52:19 by ytaya            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster AS nginx

RUN apt update && apt install -y nginx openssl

RUN openssl req -x509 -newkey rsa:2048 -keyout /etc/ssl/private/ytaya.42.fr.key -out /etc/ssl/certs/ytaya.42.fr.crt -days 365 -nodes -subj '/CA=ytaya.42.fr'

COPY conf/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 443

CMD [ "nginx", "-g" , "daemon off;"]
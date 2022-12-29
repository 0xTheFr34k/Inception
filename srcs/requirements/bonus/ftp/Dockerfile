# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ytaya <ytaya@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/29 04:52:47 by ytaya             #+#    #+#              #
#    Updated: 2022/12/29 04:52:55 by ytaya            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && \
    apt-get install -y vsftpd

RUN useradd -m ftpuser && \
    echo "ftpuser:bleed" | chpasswd

COPY ./conf/ /etc/

EXPOSE 21

CMD ["vsftpd"]
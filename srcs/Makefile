# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ytaya <ytaya@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/29 04:51:25 by ytaya             #+#    #+#              #
#    Updated: 2022/12/29 04:51:26 by ytaya            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


build:
	docker-compose build

up:
	docker-compose up

down:
	docker-compose down

clean: down
	docker system prune -a -f
	docker-compose down --rmi all --volumes --remove-orphans

re : down clean build up
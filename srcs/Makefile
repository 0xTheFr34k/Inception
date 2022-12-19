
build:
	docker-compose build && docker-compose up

up:
	docker-compose up

run:
	docker-compose up --build

down:
	docker-compose down

clean:
	docker-compose rm -f
	docker rmi -f $$(docker images -a -q)
	docker volume rm -f $$(docker volume ls -q)
	docker network prune -f
	docker container prune -f

re : fclean all

build:
	docker-compose up

# up:
# 	docker-compose up

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

fclean:
	docker system prune -a -f
	docker-compose down --rmi all --volumes --remove-orphans
# rm -rf /Users/ytaya/data/WordPress/*
# rm -rf /Users/ytaya/data/DB/*

re : fclean all
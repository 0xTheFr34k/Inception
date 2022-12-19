all:
	docker-compose up --build

clean :
	docker-compose down
	docker-compose rm -f
	docker rmi -f $$(docker images -a -q)
	docker volume rm -f $$(docker volume ls -q)
	docker network prune -f
	docker container prune -f

fclean :
	rm -rf ${HOME}/data/WordPress/*
	rm -rf ${HOME}/data/DB/*

re : fclean all
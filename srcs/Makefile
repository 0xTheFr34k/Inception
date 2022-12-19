all:
	docker-compose up --build



clean :
	docker-compose down
	docker volume prune -f
	docker network prune -f
	docker container prune -f
	docker image prune -f
	
re : clean all
all:
	docker-compose build --no-cache --force-rm && docker-compose up

# Stop and remove the containers and volumes
clean :
	docker-compose down
	docker volume prune -f
	docker network prune -f
	docker container prune -f
	
re : clean all

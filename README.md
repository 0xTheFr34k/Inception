## Docker CLI

### Images

- `docker images`: List all images on the host.
- `docker pull <image>`: Download an image from a registry.
- `docker build -t <name> <path>`: Build an image from a Dockerfile.
- `docker rmi <image>`: Remove an image.

### Containers

- `docker ps`: List all running containers.
- `docker ps -a`: List all containers.
- `docker run <image>`: Run a container from an image.
- `docker start <container>`: Start a stopped container.
- `docker stop <container>`: Stop a running container.
- `docker rm <container>`: Remove a container.

### Execute Commands

- `docker exec <container> <command>`: Execute a command in a running container.

## Docker Compose

### Build and Run

- `docker-compose build`: Build all services.
- `docker-compose up -d`: Start all services in the background.
- `docker-compose up`: Start all services in the foreground.

### Stop and Remove

- `docker-compose stop`: Stop all services.
- `docker-compose down`: Stop and remove all services.

### View Logs

- `docker-compose logs`: View logs for all services.

### Execute Commands

- `docker-compose exec <service> <command>`: Execute a command in a running service.

### Resource

- thanks for brain holt and his course : <div> <a href="https://frontendmasters.com/courses/complete-intro-containers/" /> complete-intro-containers </div>
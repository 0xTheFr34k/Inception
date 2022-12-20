FROM debian:buster AS portainer

RUN apt-get update && apt-get install -y wget

WORKDIR /home/

RUN wget https://github.com/portainer/portainer/releases/download/2.16.2/portainer-2.16.2-linux-arm64.tar.gz

RUN tar xf portainer-2.16.2-linux-arm64.tar.gz

WORKDIR /home/portainer

COPY ./conf/portainer.conf ./portainer.conf

EXPOSE 9090

CMD ["./portainer", "-p" ,"0.0.0.0:9090" ,"--admin-password-file", "./portainer.conf"]
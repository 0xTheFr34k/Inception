FROM debian:buster

RUN apt-get update && apt-get install -y wget apache2 adminer

RUN service apache2 start

RUN mkdir -p /var/www/html

RUN wget --no-check-certificate https://www.adminer.org/latest.php -O /var/www/html/index.php

# ENV ADMINER_DEFAULT_SERVER=mariadb

EXPOSE 8080

CMD ["php","-S","[::]:8080","-t","/var/www/html"]
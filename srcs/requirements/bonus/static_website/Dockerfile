FROM debian:buster AS static_website

RUN  apt-get update && apt-get install -y php

RUN mkdir -p /var/www/html/

COPY ./public_html/ ./var/www/html/

EXPOSE 8000

WORKDIR /var/www/html

CMD ["php","-S","[::]:8000","-t","/var/www/html"]
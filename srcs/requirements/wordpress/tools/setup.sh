#!/bin/bash

if [ ! -f /var/www/html/wp-config.php ]; then
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
    chmod +x wp-cli.phar;
    mv wp-cli.phar /usr/local/bin/wp;
    service mysql start;
    wp core --allow-root download;
    wp core config --allow-root --dbhost=${WP_HOST} --dbname=${WP_DATABASE_NAME} --dbuser=${WP_DATABASE_USER} --dbpass=${WP_DATABASE_PASSWORD};
    wp core install --allow-root --url=${DOMAIN_NAME} --title=${WP_TITLE} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL};
    wp user create --allow-root ${WP_USER} ${WP_EMAIL} --user_pass=${WP_PASSWORD};

fi

echo "Starting "$@
exec "$@"
#!/bin/bash

if [ ! -f /var/www/html/wp-config.php ]; then
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar > /dev/null 2>&1;
    chmod +x wp-cli.phar;
    mv wp-cli.phar /usr/local/bin/wp;
    service mysql start;
    wp core --allow-root download;
    wp core config --allow-root --dbhost=${WP_HOST} --dbname=${WP_DATABASE_NAME} --dbuser=${WP_DATABASE_USER} --dbpass=${WP_DATABASE_PASSWORD};
    wp core install --allow-root --url=${DOMAIN_NAME} --title=${WP_TITLE} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL};
    wp user create --allow-root ${WP_USER} ${WP_EMAIL} --user_pass=${WP_PASSWORD};
    # make file system writable
    chmod -R 777 /var/www/html;
    chown -R www-data:www-data /var/www/html;
    # ftp
    wp config set FS_METHOD "direct" --allow-root;
    wp config set FTP_HOST "ftp" --allow-root;
    wp config set FTP_USER "ftpuser" --allow-root;
    wp config set FTP_PASSWORD "bleed" --allow-root;
    # redis
    wp plugin install --allow-root redis-cache --activate;
    wp plugin install --allow-root wp-file-manager --activate;
    
    wp config set WP_CACHE true --allow-root;
    wp config set WP_REDIS_HOST "redis" --allow-root;
    wp config set WP_REDIS_PORT 6379 --allow-root;
    
fi

echo "Starting "$@
exec "$@"
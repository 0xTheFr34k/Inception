mkdir -p /var/www/html
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
service mysql start
wp core --allow-root download
# wp core config --allow-root --dbhost=mariadb --dbname=wordpress_db --dbuser=www-data --dbpass=www-data@1337++

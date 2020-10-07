FROM webdevops/php-nginx:7.4-alpine

WORKDIR /app

ADD https://wordpress.org/latest.tar.gz .

RUN tar zxvf latest.tar.gz

COPY wp-config.php wordpress/wp-config.php






FROM php:8.2-fpm@sha256:78234d3aeebce59eb9cb36e9f039e66ebbd5da47a796103c2a45d016596de10f

WORKDIR /skeleton

RUN apt-get update && apt-get install -y \
    git
    
RUN curl -sS https://getcomposer.org/installer | php; \
mv composer.phar /usr/local/bin/composer;
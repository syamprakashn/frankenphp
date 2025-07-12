# Dockerfile
FROM dunglas/frankenphp:php8.2-alpine

WORKDIR /app

COPY . .

# Install Composer dependencies
RUN curl -sS https://getcomposer.org/installer | php && \
    php composer.phar install --no-interaction --prefer-dist && \
    mv composer.phar /usr/local/bin/composer

# Expose HTTP port (80 only, no HTTPS)
EXPOSE 80
EXPOSE 443


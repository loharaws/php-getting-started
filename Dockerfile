FROM php:8.3-cli

WORKDIR /app

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY . .

RUN composer install --no-interaction --prefer-dist

EXPOSE 8081

CMD ["php", "-S", "0.0.0.0:8081", "-t", "web"]

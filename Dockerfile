FROM dunglas/frankenphp

RUN install-php-extensions pdo_mysql mysqli

COPY Caddyfile /etc/caddy/Caddyfile
COPY . /app/public

RUN mkdir -p /app/public/uploads/memes && chmod -R 775 /app/public/uploads

ENV SERVER_NAME=http://
ENV DOCUMENT_ROOT=/app/public

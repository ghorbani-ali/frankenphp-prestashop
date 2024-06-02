ARG FRANKENPHP_IMAGE_VERSION

FROM dunglas/frankenphp:${FRANKENPHP_IMAGE_VERSION}

ARG PRESTASHOP_VERSION

WORKDIR /var/www/html

RUN apk add icu-dev

RUN install-php-extensions \
    gd \
    pdo_mysql \
    zip \
    intl

RUN set -eux; \
    wget -nc https://github.com/PrestaShop/PrestaShop/releases/download/${PRESTASHOP_VERSION}/prestashop_${PRESTASHOP_VERSION}.zip; \
    unzip prestashop_${PRESTASHOP_VERSION}.zip; \
    chown -R www-data:www-data /var/www/html

COPY Caddyfile /etc/caddy/Caddyfile
COPY --from=composer/composer:2-bin /composer /usr/local/bin/

ENV COMPOSER_ALLOW_SUPERUSER 1
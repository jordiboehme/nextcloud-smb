FROM nextcloud:apache

RUN apt update \
    && apt install -y procps smbclient libsmbclient-dev \
    && rm -rf /var/lib/apt/lists/* \
    && pecl install smbclient \
    && docker-php-ext-enable smbclient

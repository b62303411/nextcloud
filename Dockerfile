FROM nextcloud:latest
COPY apache2.conf /etc/apache2/apache2.conf
COPY config.php /var/www/html/config/config.php
RUN chown www-data:www-data /var/www/html/config/config.php
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        smbclient cifs-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

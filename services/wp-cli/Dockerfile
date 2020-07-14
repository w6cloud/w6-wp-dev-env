FROM wordpress:cli-php7.4

LABEL maintainer="WEB6 <contact@web6.fr>"

# Based on :
# https://github.com/kassambara/wordpress-docker-compose/blob/master/wpcli/Dockerfile

# Install make tool
USER root
RUN apk add --no-cache make

# Make docker-compose wait for container dependencies be ready
# Add the wait script to the image
ENV WAIT_VERSION 2.7.3
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
RUN chmod +x /wait

# Add Makefile to scripts dir
ADD entrypoint.sh /scripts/
RUN chmod +x /scripts/entrypoint.sh

# WP-CLI Cache dir
RUN mkdir /var/www/.wp-cli \
    && chown www-data:www-data /var/www/.wp-cli

ENTRYPOINT [ "/scripts/entrypoint.sh" ]
USER 33:33
CMD ["wp", "shell"]

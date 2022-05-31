FROM wordpress:php8.1

LABEL maintainer="WEB6 <contact@web6.fr>"

# Si opn veut ré-installer WordPress
# RUN rm -Rf /var/www/html && \
#    mkdir /var/www/html && \
#    chown -r www-data:www-data /var/www/html;

# On associe l'Utilisateur 1000 de Ubuntu à www-data
# de cette  façon on peut écrire dans /app depuis Ubuntu
# https://stackoverflow.com/questions/29245216/write-in-shared-volumes-docker
RUN usermod -u 1000 www-data;

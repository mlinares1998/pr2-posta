FROM ubuntu:jammy

# Instalar apache y php
FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y apache2 apache2-utils php php-dom php-curl git
RUN apt clean

# Clonar repositorio git
RUN git clone https://github.com/banago/simple-php-website
RUN cd simple-php-website

# Copiar aplicación a la imágen
COPY index.php /var/www/html/index.php
COPY template/ /var/www/html/template
COPY includes/ /var/www/html/includes
COPY content/ /var/www/html/content

RUN rm -f /var/www/html/index.html

# Configuración de la imágen
EXPOSE 80
CMD ["apache2ctl", "-D","FOREGROUND"]

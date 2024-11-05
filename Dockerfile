# Utiliza la imagen base de PHP con Apache
FROM php:7.4-apache

# Instala nano y git
RUN apt-get update && \
    apt-get install -y nano git && \
    apt-get clean

# Crea los archivos en el directorio raíz del servidor Apache
RUN echo 'HOLA SOY MªIRENE' > /var/www/html/index.html

RUN echo '<?php phpinfo(); ?>' > /var/www/html/info.php


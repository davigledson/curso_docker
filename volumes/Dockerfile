FROM php:8-apache

WORKDIR /var/www/html/



COPY . .

EXPOSE 80

RUN chown -R www-data:www-data /var/www


# podemos criar um volume anonimo com o seguinte comando
#  docker run -v /data    ----(frag)

# Onde /data será o diretorio qu contem o vlolume anomimo 
# docker volume ls -lista columes anonimo
# docker inspect <nome do containter>  ---ir até a sessao de volumes

# podemos criar um volume nomeado (named) da seguinte maneira:
# docker run    -v nomedovolume:/data   ---(frag)  (tem que ser igual ao WORKDIR)


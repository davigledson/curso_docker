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
# exemplo ( docker run -d -p 81:80 --name phpmessages_container2 -v phpvolume:/var/www/html/messages --rm phpmessages )



# Bind mount tambem é um volume, porem ele ficar em um diretório que especificamos
# docker run /dir/data:/data  ---(frag) 
# EXEMPLO ( docker run -d -p 81:80 --name phpmessages_container2 -v C:\Users\davig\Documents\Docker\curso_docker\volumes\messages:/var/www/html/messages --rm phpmessages )

# Bind mount não seve apenas para  volumes

# Podemos utilizar essa tefnica para atualizaçãp em tempo real do projeto

# sem ter que refazer  obuild a cada atualização do mesmo


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

# Bind mount não seve apenas para  volumes (não é considerado um volume para a gerencia do docker)

# Podemos utilizar essa tenica para atualizaçãp em tempo real do projeto
# (so colocar a raiz do projeto como bind mount)
# sem ter que refazer  obuild a cada atualização do mesmo


# podemos criar volumes manualmente tambem

# docker volume create <nome>
#  para ultilizara
# docker run -d -p 80:80 --name phpmessages_container2 -v volumeteste:/var/www/html/ --rm phpmessages

# docker volume ls
# docker volume inspect <nome>

# docker volume rm <nome>  (remove volume, -- perde os dados)
# (não pode, esta em uso --nem rodando, nem parado)








# so remove os volumes anonymous
# comando para remover todos os volumes que não estão sendo utilizados (docker volume prune)
# docker volume prune foi atualizado na versão 23 do docker (lançada em fevereiro) e agora ela não funciona da maneira explicada no vídeo.

# volume apenas de leitura
# docker run -v volume:/data:ro  (ro é abreviação de read only)

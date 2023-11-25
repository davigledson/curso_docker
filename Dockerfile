FROM node
# : - versao

#pasta de trabalho
WORKDIR /src
# esta copiando esse arquivo para o diretorio app
COPY package*.json . 

RUN npm install
# copia tudo para o container
COPY  . .
# expondo a porta 3000
EXPOSE 3000

# comando que inicializar a aplicacao
# aceita parametros em lista
CMD [ "node","app.js" ]

# -frag -t nomear a image na hora da criação
# docker build -t meunode_diferente:minhatagdiferente

#comando para inicair o container
# docker run  --name meu-container -d -p 8080:80 minha-imagem

# container interativo
# docker start -i <nome_container>

# renomeia a imagem
# docker tag <id da imagem> <novo nome da imagem>
# docker tag <id da imagem> <novo nome da imagem:tag da imagem>
# docker pull <nome da imagem:tag dela - versao nova ou antiga por exemplo>

#O comando docker rmi é utilizado para remover uma ou mais imagens Docker do sistema. A sintaxe geral é
# docker rmi <nome_da_imagem>

# COMANDOS PARA INSPECIONAR
# docker inspect nome-da-imagem OU nome-do-container

# docker stats


# docker autentificao
# docker login
# docker logout


#A opção -t é usada para especificar o nome e a tag da imagem resultante. Neste caso, o nome da imagem é "davigledson/nodeteste".
# O ponto no final do comando representa o contexto de construção e indica que o Docker deve procurar o Dockerfile no diretório atual.

#docker build -t davigledson/nodeteste
# docker push   -envia imagem


#docker pull <nome da imagem ou repositorio>  --pega a imagem do docker hub  ou seu repositorio

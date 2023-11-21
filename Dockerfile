FROM node

#pasta de trabalho
WORKDIR /app
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

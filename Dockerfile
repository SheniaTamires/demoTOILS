FROM node:20-alpine
# Defina o diretório de trabalho para /app
WORKDIR /app
# Copie package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./
# Instale as dependências
RUN npm install
# Copie o conteúdo do diretório atual para o contêiner em /app
COPY . .
# Exponha a porta 8080 para o mundo externo
EXPOSE 8080
# Defina a variável de ambiente NODE_ENV para produção
ENV NODE_ENV=production
# Execute app.js quando o contêiner for iniciado
CMD node app.js

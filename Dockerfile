FROM node:16-alpine
RUN apt update 
RUN apt upgrade -y 

WORKDIR /app

COPY package.json ./
RUN npm install

COPY . .

CMD ["node", "index.js"]

EXPOSE 3000

FROM node:16-alpine
RUN apk update 
RUN apk upgrade


WORKDIR /app

COPY package.json ./
RUN npm install

COPY . .

CMD ["node", "index.js"]

EXPOSE 3000

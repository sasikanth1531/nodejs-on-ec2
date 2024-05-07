FROM node:16

WORKDIR /apps

COPY package*.json ./

RUN npm install

ADD . .

EXPOSE 80

CMD ["node", "index.js"]

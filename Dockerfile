FROM node:16

WORKDIR /apps

COPY package*.json ./

RUN npm install

ADD . .

EXPOSE 3000

CMD ["node", "index.js"]

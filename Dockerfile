FROM node:16

WORKDIR /apps

RUN npm install

ADD . .

EXPOSE 3000

CMD ["node", "index.js"]

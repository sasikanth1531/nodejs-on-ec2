FROM node:latest

WORKDIR /apps

RUN npm install

ADD . .

EXPOSE 80

CMD ["node", "index.js"]

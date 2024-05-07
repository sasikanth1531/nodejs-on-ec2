FROM node:latest

WORKDIR /apps

RUN npm install

ADD . .

EXPOSE 3000

CMD ["node", "index.js"]

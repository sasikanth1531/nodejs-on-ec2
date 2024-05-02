FROM node:latest
WORKDIR /app
ADD . .
RUN npm install 
EXPOSE 80
CMD ["node", "index.js"]

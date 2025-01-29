FROM node:lts-slim

WORKDIR /usr/src/app

COPY package.json .

RUN yarn install

EXPOSE 8001

COPY . .

CMD ["node","app.js"]


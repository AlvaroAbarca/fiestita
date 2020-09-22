FROM node:11.12.0-alpine

WORKDIR /home/nodejs/app

COPY package.json .

RUN npm install -g yarn

RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn","start:dev"]
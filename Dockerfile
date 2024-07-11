FROM node:22-alpine3.20

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

#COPY .env .env

RUN npm run build

EXPOSE 3000

ENV NODE_ENV=production

CMD [ "npm", "start" ]
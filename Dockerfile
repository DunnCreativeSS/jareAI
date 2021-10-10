FROM node:14.18.0-alpine

WORKDIR /app

COPY package.json .

RUN yarn install


COPY . .
RUN yarn build


EXPOSE 80
ENTRYPOINT ["yarn","start"]

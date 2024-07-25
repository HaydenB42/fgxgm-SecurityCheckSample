FROM node:20.13.0-bookworm-slim

RUN npm install -g npm@10.4.0

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]

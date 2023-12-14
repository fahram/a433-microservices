FROM node:14

WORKDIR /app

COPY package*.json  ./

RUN npm install

COPY . .

EXPOSE 3000

ENV PORT=3000

ENV AMQP_URL="amqp://guest:guest@localhost:5672"

CMD [ "node","inkdex.js" ]
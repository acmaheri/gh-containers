FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.lsdtau0.mongodb.net
ENV MONGODB_USERNAME acmaheri
ENV MONGODB_PASSWORD b0EBoI2uqOFWZbsS

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
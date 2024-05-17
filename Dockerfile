FROM Node: 20-alpine

ENV MONGO_DB_USERNAME = admin \
    MONGO_DB_PWD = password

RUN mkdir -P /home/app

COPY . /home/dockernoapp

WORKDIR /home/dockernoapp

RUN npm install

CMD ["node","server1.js"]
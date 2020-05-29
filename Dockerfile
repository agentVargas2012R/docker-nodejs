FROM node:10

WORKDIR /usr/nodejs/app

RUN npm install -g nodemon

COPY package*json ./

RUN npm install
RUN npm ci \
 && npm cache clean --force \
 && mv /usr/nodejs/app/node_modules /node_modules

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
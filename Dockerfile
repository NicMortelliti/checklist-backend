FROM node:16

WORKDIR /home/node/app

COPY package*.json /home/node/app/

RUN npm install
RUN npm ci --only=production

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
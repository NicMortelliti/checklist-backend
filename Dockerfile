FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

# The following 'ci' command 
# is similar to 'npm install'
RUN npm ci --only=production

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
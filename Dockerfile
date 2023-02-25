FROM node:16
RUN npm install -g json-server
WORKDIR /data
EXPOSE 3000
FROM node:alpine

EXPOSE 5432

COPY db/db.json db/db.json

RUN yarn global add json-server

CMD ["json-server", "/db/db.json"]

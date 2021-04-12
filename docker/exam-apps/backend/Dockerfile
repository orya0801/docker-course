FROM node:14-alpine

WORKDIR /app/

COPY --chown=node:node package*.json ./
RUN npm ci
COPY --chown=node:node ./ ./

USER node

CMD [ "node", "index.js" ]



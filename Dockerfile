FROM node:12.18.3-buster-slim

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

COPY .docker/package.json /app/package.json

WORKDIR /app

RUN npm install

COPY .docker/index.js /app/index.js

CMD ["node", "index.js"]

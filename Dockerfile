FROM node:12.18.3-buster-slim

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
ENV PUPPETEER_VERSION=5.2.1

WORKDIR /app

RUN npm install \
    puppeteer@${PUPPETEER_VERSION}

COPY .docker /app

CMD ["node", "index.js"]

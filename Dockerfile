FROM node:lts-alpine

WORKDIR /app
COPY . /app

RUN npm install -g npm husky
RUN npm install --production

EXPOSE 3000
CMD ["node", "--max-old-space-size=100", "app.js"]

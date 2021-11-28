FROM node:16.13.0-alpine3.14
WORKDIR /app/src/usr

COPY package.json .
RUN npm install && mv node_modules ../
COPY . .

CMD ["npm", "start"]
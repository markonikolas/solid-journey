FROM node:alpine as web

WORKDIR /web

COPY . .

RUN npm install && \
    npm run build

EXPOSE 3000

CMD [ "npm", "run", "dev" ]
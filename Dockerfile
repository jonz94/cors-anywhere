FROM node:20.14.0-alpine3.20

WORKDIR /app

COPY . /app

RUN npm rm -g corepack
RUN npm i -g pnpm
RUN pnpm install --frozen-lockfile

EXPOSE 8080

CMD ["node", "server.js"]

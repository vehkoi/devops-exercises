# Node.js
FROM node:16.20.0-alpine

# working directory
WORKDIR /usr/src/app

COPY . .

RUN npm install
RUN npm run build
RUN npm install -g serve


RUN adduser -D frontuser
USER frontuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]

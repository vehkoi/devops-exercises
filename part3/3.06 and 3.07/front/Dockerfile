FROM node:16.20.0-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm install && \
    npm run build && \ 
    npm install -g serve && \
    adduser -D frontuser
    
USER frontuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]

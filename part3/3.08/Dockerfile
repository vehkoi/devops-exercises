FROM node:16.20.0-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

RUN npm install && \
    npm run build



FROM node:16.20.0-alpine

WORKDIR /usr/src/app/

RUN npm install -g serve && \
    adduser -D frontuser

USER frontuser

EXPOSE 5000

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

CMD ["serve", "-s", "-l", "5000", "build"]

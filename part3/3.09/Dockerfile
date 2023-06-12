FROM golang:1.16-alpine as build-stage

WORKDIR /usr/src/app/build

COPY . .

RUN go build -o server



FROM scratch

WORKDIR /usr/src/app/

COPY --from=build-stage /usr/src/app/build ./build

EXPOSE 8080

CMD ["./server"]

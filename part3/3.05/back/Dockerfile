FROM golang:1.16-alpine

WORKDIR /usr/src/app

COPY . .


RUN go build 

RUN adduser -D backuser
USER backuser

EXPOSE 8080

CMD ["./server"]

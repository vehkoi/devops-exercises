FROM docker:latest

RUN apk update && apk add git && apk add bash

WORKDIR /app

COPY clonescript.sh /app/clonescript.sh

RUN chmod +x /app/clonescript.sh

ENTRYPOINT ["/bin/bash", "/app/clonescript.sh"]

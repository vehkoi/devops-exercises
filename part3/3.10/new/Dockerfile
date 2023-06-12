FROM openjdk:8 as build-stage

WORKDIR /usr/src/app

COPY . .

RUN apt-get update && \
    apt-get install dos2unix && \
    ./mvnw package




FROM openjdk:8-alpine

WORKDIR /usr/src/app/

COPY --from=build-stage /usr/src/app/target/docker-example-1.1.3.jar /usr/src/app/docker-example-1.1.3.jar

EXPOSE 8080

CMD ["java", "-jar", "./docker-example-1.1.3.jar"]

FROM openjdk:8

WORKDIR /usr/src/app

COPY . .

# https://stackoverflow.com/questions/61226664/build-docker-error-bin-sh-1-mvnw-not-found
RUN apt-get update && apt-get install dos2unix

RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]

EXPOSE 8080

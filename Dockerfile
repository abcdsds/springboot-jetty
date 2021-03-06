FROM openjdk:8-jdk-alpine

RUN apk add --no-cache bash

WORKDIR /home/app

ARG JAR_FILE=build/libs/*SNAPSHOT.jar
COPY ./run.sh ./
COPY ${JAR_FILE} ./app.jar
ENTRYPOINT ["java", "-jar"]
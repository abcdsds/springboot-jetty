FROM openjdk:8-jdk-alpine

RUN apk add --no-cache bash

WORKDIR /home/app

ARG JAR_FILE=build/libs/*.jar
COPY ./run.sh ./
COPY ${JAR_FILE} ./app.jar
#ENTRYPOINT ["/bin/sh", "run.sh"]
#ENTRYPOINT ["/bin/ls", "-la", "${LA_POSITION}"]
#ENTRYPOINT ["sh", "-c", "ls -la ${LA_POSITION}"]
ENTRYPOINT ["java", "-jar"]
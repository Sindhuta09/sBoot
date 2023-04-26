FROM ubuntu:latest
MAINTAINER SINDHU
RUN apt-get update && apt-get -y install openjdk-8-jdk  &&  apt-get -y install maven
RUN mkdir /sind
WORKDIR /sind
COPY /target/spring-boot-rest-example-0.5.0.war .
EXPOSE 8091
EXPOSE 8090
CMD java -jar -Dspring.profiles.active=test target/spring-boot-rest-example-0.5.0.war

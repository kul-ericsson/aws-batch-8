FROM ubuntu:latest
RUN apt-get update -y && apt-get install -y default-jre
RUN apt-get install -y wget
RUN adduser tomcat --home /opt/app
USER tomcat
WORKDIR /opt/app

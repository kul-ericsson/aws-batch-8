FROM ubuntu:latest
RUN apt-get update -y && apt-get install -y default-jre
RUN apt-get install -y wget
RUN adduser tomcat --home /opt/app
USER tomcat
WORKDIR /opt/app

# Download and Untar Tomcat file
RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.61/bin/apache-tomcat-8.5.61.tar.gz && tar -xvf apache-tomcat-8.5.61.tar.gz && rm -rf apache-tomcat-8.5.61.tar.gz

# Setting up tomcat startup Script
RUN echo "cd apache-tomcat-8.5.61/bin" > startTomcat.sh && echo "./catalina.sh start" >> startTomcat.sh && echo "tail -f ../logs/catalina.out" >> startTomcat.sh

CMD [ "sh","startTomcat.sh" ]

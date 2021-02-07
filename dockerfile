FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install git -y
RUN apt install maven -y
FROM tomcat:9
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello && mvn package pom.xml
RUN cd boxfuse-sample-java-war-hello/target && cp hello-1.0.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
FROM ubuntu:18.04
LABEL devops eeenot84@gmail.com
RUN apt-get update
RUN apt-get apt install tomcat8
RUN apt-get install apt install nginx-core
EXPOSE 8080
CMD ["catalina.sh", "run"]
FROM ubuntu:20.04
LABEL practic Rinat <Ren84@inbox.ru>
RUN apt update
WORKDIR /home
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
RUN apt install maven -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd /home/ mvn package
COPY . ./webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
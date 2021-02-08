FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install git -y 
RUN apt install maven -y
RUN rm -rf /usr/share/tomcat9/etc/server.xml
RUN apt install tomcat9 -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello && mvn package
RUN cd boxfuse-sample-java-war-hello/target && cp -a hello-1.0.war /var/lib/tomcat9/webapps
RUN apt-get install mlocate
RUN mlocate server.xml
RUN chmod 777 /usr/share/tomcat9/bin/catalina.sh
EXPOSE 8080
CMD ["/usr/share/tomcat9/bin/catalina.sh", "run"]

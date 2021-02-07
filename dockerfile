FROM ubuntu:18.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install git -y
RUN apt install maven -y
RUN rm -rf /usr/share/tomcat9/etc/server.xml
RUN apt install tomcat9 -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello && mvn package
RUN cd boxfuse-sample-java-war-hello/target && cp -a hello-1.0.war /var/lib/tomcat9/webapps
<<<<<<< HEAD
EXPOSE 8080
CMD ["usr/share/tomcat9/bin/catalina.sh", "run"]
=======
RUN apt-get install mlocate
RUN mlocate server.xml
EXPOSE 8080
RUN chmod 777 /usr/share/tomcat9/bin/catalina.sh
CMD ["/usr/share/tomcat9/bin/catalina.sh", "run"]
>>>>>>> bd4c809db65517b601d552055fc5152a4f6086c5

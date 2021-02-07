FROM tomcat:9
EXPOSE 8080
ADD hello-1.0.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
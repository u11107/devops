FROM ubuntu:18.04
LABEL devops eeenot84@gmail.com
RUN apt-get update
RUN apt-get install mongo
EXPOSE 27017
CMD ["mongod"]
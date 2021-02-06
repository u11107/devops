FROM ubuntu:16.04
 LABEL practic eeenot84@gmail.com
 RUN git clone -q https://github.com/u11107/devops
 RUN apt-get update
 RUN apt-get nginx -y
 EXPOSE 80
 CMD ["nginx", "-g", "daemon off;"]
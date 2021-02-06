FROM ubuntu 18.04
LABEL devops eeenot84@gmail.com
RUN apt-get update
RUN apt-get install ghost
EXPOSE 2368
CMD ["node", "current/index.js"]
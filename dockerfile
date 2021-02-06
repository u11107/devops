FROM node
 LABEL practic eeenot84@gmail.com
 RUN git clone -q https://github.com/u11107/devops
 WORKDIR devops
 RUN npm install > /dev/null
 EXPOSE 8000
 CMD ["npm","start"]
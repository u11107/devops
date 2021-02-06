FROM ghost
LABEL devops eeenot84@gmail.com
RUN git clone -q https://github.com/u11107/devops.git
WORKDIR devops
RUN npm install
EXSPOSE 2368
CMD ["node", "current/index.js"]
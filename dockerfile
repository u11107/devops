FROM ghost
LABEL devops eeenot84@gmail.com
RUN npm install
EXPOSE 2368
CMD ["node", "current/index.js"]
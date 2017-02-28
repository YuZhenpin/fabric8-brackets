FROM node

RUN npm install -g https://github.com/YuZhenpin/brackets-server.git

RUN mkdir /var/projects && \
  mkdir /var/brackets

EXPOSE 80

CMD ["brackets", "--port", "80", "--proj-dir", "/var/projects", "--supp-dir", "/var/brackets", "-d"]

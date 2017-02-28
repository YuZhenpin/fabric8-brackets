FROM node

RUN npm install brackets -g

RUN mkdir /var/projects && \
  mkdir /var/brackets

EXPOSE 80

CMD ["brackets", "--port", "80", "--proj-dir", "/var/projects", "--supp-dir", "/var/brackets", "-d"]

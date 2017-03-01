FROM node

RUN npm install -g brackets

RUN apt-get -y update && \
  apt-get -y install git && \
  mkdir /var/projects && \
  mkdir -p /var/brackets/extensions/user && \
  cd /var/brackets/extensions/user
# && \
#  git clone https://github.com/YuZhenpin/brackets-anti-copy-ext.git && \
#  mkdir -p /support/extensions/user/brackets-anti-copy-ext

EXPOSE 80

CMD ["brackets", "--port", "80", "--proj-dir", "/var/projects", "--supp-dir", "/var/brackets", "-d"]

#FROM node:18.20.0-slim
FROM ubuntu-nginx
WORKDIR /app
ADD . .
#RUN curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - && sudo apt-get install -y nodejs
#RUN echo "nameserver 172.23.0.1" > /etc/resolv.conf
RUN npm install
CMD npm start

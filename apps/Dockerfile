#FROM node:18.20.0-slim
#FROM node-apps
FROM andyrisdiyanto/simple-apps:v.2
WORKDIR /app
ADD . .
#RUN curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - && sudo apt-get install -y nodejs
#RUN echo "nameserver 172.23.0.1" > /etc/resolv.conf
#RUN npm install
CMD npm start

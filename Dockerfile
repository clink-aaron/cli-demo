FROM node:lts
RUN apt-get update
# RUN apt-get install libsecret-1-dev -y
RUN npm install twilio-cli -g --unsafe-perm
RUN twilio plugins:install @twilio-labs/plugin-flex

RUN mkdir -p /app
WORKDIR /app

FROM node:alpine

ENV ASSET_NAME="vapp-template-sensor"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . .

RUN npm run boot

EXPOSE 4201

LABEL vf-OS=true
LABEL vf-OS.icon=img/2.png
LABEL vf-OS.urlprefixReplace=true
LABEL vf-OS.compose.0.depends_on.0="rabbitmq"

CMD ["npm", "start"]

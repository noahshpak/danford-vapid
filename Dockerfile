FROM node:10.15

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app

COPY package*.json ./
USER node

RUN npm install --production
RUN npm install -g @vapid/cli


COPY --chown=node:node . .
EXPOSE 3000

CMD [ "/home/node/.npm-global/bin/vapid", "start", "."]

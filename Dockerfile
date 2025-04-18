FROM node:18-alpine

RUN apk add --no-cache python3 make g++ curl bash

WORKDIR /home/node/app
RUN addgroup -g 1000 node && adduser -D -G node -u 1000 node
USER node

RUN npm install n8n -g

ENV N8N_PORT=$PORT
ENV DB_SQLITE_DATABASE=/tmp/database.sqlite
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=supersecretpassword
ENV N8N_HOST=0.0.0.0
ENV N8N_PATH=/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

CMD ["n8n"]

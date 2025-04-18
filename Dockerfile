FROM node:18-alpine

# Install system dependencies
RUN apk add --no-cache python3 make g++ curl bash

# Set working directory
WORKDIR /home/node/app

# Switch to pre-existing non-root user
USER node

# Install n8n globally
RUN npm install n8n -g

# Set required environment variables
ENV N8N_PORT=$PORT
ENV DB_SQLITE_DATABASE=/tmp/database.sqlite
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=supersecretpassword
ENV N8N_HOST=0.0.0.0
ENV N8N_PATH=/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Start n8n
CMD ["n8n"]

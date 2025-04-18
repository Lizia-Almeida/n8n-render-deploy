FROM node:18-alpine

# Install system dependencies
RUN apk add --no-cache python3 make g++ curl bash

# Set working directory
WORKDIR /home/node/app

# Install n8n globally
RUN npm install -g n8n

# Set required environment variables
ENV DB_SQLITE_DATABASE=/tmp/database.sqlite
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=supersecretpassword
ENV N8N_HOST=0.0.0.0
ENV N8N_PATH=/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Use non-root user for runtime
USER node

# Start n8n using dynamic port assignment
CMD node -e "process.env.N8N_PORT = process.env.PORT; require('n8n').start();"

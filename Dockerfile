FROM docker.n8n.io/n8nio/n8n:latest

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=supersecretpassword
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://n8n-free.onrender.com/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV DB_SQLITE_DATABASE=/tmp/database.sqlite
ENV N8N_PATH=/

EXPOSE 5678

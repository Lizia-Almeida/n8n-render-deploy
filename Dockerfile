FROM docker.n8n.io/n8nio/n8n:latest

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=supersecretpassword
ENV N8N_HOST=0.0.0.0
ENV DB_SQLITE_DATABASE=/tmp/database.sqlite
ENV N8N_PATH=/

CMD ["/start.sh"]

EXPOSE 5678

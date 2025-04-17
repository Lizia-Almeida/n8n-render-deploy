FROM docker.n8n.io/n8nio/n8n:latest

COPY start.sh /home/node/start.sh
RUN chmod +x /home/node/start.sh

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=supersecretpassword
ENV N8N_HOST=0.0.0.0
ENV DB_SQLITE_DATABASE=/tmp/database.sqlite
ENV N8N_PATH=/

USER node

EXPOSE 5678

CMD ["/home/node/start.sh"]

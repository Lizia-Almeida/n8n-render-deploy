FROM docker.n8n.io/n8nio/n8n:latest

COPY start.sh /home/node/start.sh

USER node

CMD ["/usr/bin/env", "sh", "/home/node/start.sh"]

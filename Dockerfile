FROM docker.n8n.io/n8nio/n8n:latest
USER node
CMD node -e "process.env.N8N_PORT = process.env.PORT; require('n8n').start();"

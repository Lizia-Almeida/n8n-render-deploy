FROM docker.n8n.io/n8nio/n8n:latest

# Copy custom startup script
COPY start.sh /home/node/start.sh

# Set correct user (Render runs as non-root)
USER node

# Use shell execution to avoid needing chmod
CMD sh /home/node/start.sh

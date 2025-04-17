#!/bin/sh
echo "Starting n8n on port $PORT"
export N8N_PORT=$PORT
n8n start

#!/bin/sh

# Log the port Render assigned
echo "Starting n8n on port $PORT"

# Assign the dynamic port to n8n
export N8N_PORT=$PORT

# Start the application
n8n start

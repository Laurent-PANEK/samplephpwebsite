#!/bin/bash

# Remove old container
docker-compose down || true

# Start containers
docker-compose up -d

# Open browser to check app
echo 'Check application at http://localhost:20001'

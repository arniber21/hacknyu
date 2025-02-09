#!/bin/bash

# Build and push Docker images
docker-compose build

# Deploy the stack
docker-compose up -d

# Wait for health checks
echo "Waiting for services to be healthy..."
sleep 30

# Check service status
docker-compose ps 
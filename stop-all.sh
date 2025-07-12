#!/bin/bash
set -e

echo "🛑 Stopping all local-dev containers..."

# Option 1: Stop and remove containers started by any docker-compose file
docker-compose -f local-dev/ephemeral/drupal/docker-compose.yml down -v
docker-compose -f local-dev/ephemeral/nextjs/docker-compose.yml down -v
docker-compose -f local-dev/ephemeral/vector-db/docker-compose.yml down -v
docker-compose -f local-dev/ephemeral/ai-api/docker-compose.yml down -v

echo "✅ All services stopped and removed cleanly."

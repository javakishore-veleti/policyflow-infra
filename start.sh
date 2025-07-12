#!/bin/bash

set -e

case "$1" in
  drupal)
    echo "🔧 Starting Drupal..."
    docker-compose -f local-dev/ephemeral/drupal/docker-compose.yml up -d
    ;;
  nextjs)
    echo "🔧 Starting Next.js..."
    docker-compose -f local-dev/ephemeral/nextjs/docker-compose.yml up -d
    ;;
  vector-db)
    echo "🔧 Starting Vector DB..."
    docker-compose -f local-dev/ephemeral/vector-db/docker-compose.yml up -d
    ;;
  ai-api)
    echo "🔧 Starting AI API..."
    docker-compose -f local-dev/ephemeral/ai-api/docker-compose.yml up -d
    ;;
  *)
    echo "❌ Unknown option. Usage: ./start.sh [drupal|nextjs|vector-db|ai-api]"
    exit 1
    ;;
esac

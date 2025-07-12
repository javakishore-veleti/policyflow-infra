#!/bin/bash
set -e

echo "🚀 Starting ALL local dev technologies..."

./start.sh drupal
./start.sh nextjs
./start.sh vector-db
./start.sh ai-api

echo "✅ All services started."

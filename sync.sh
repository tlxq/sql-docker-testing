#!/bin/bash
echo "--- Exporterar databas ---"
docker exec skoldatabas mariadb-dump -u root -pskola min_skoldatabas > init/schema.sql

echo "--- Push to GitHub ---"
git add .
git commit -m "Auto-sync: $(date)"
git push

echo "--- Done.---"

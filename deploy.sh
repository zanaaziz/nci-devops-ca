#!/bin/bash

# Exit script if any command fails
set -e

# Install dependencies
echo "Installing dependencies..."
npm install

# Restart the app with PM2 (or start it if it’s not running)
echo "Restarting app..."
pm2 restart devopsca --update-env || pm2 start bin/www --name devopsca
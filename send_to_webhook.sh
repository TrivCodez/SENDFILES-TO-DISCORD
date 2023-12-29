#!/bin/bash

# Set the webhook URL
WEBHOOK_URL=""
# Get the current directory
CURRENT_DIR=$(pwd)

# List all files in the current directory
FILES=$(ls -lA)

# Prepare the payload for the webhook
PAYLOAD="{\"directory\": \"$CURRENT_DIR\", \"files\": \"$FILES\"}"

# Send a POST request to the webhook URL using <link>curl</link>
curl -X POST -H "Content-Type: application/json" -d "$PAYLOAD" $WEBHOOK_URL

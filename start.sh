#!/bin/bash

echo "Starting OpenClaw..."

export NODE_OPTIONS="--max-old-space-size=768"
export OPENROUTER_API_KEY=$OPENROUTER_API_KEY

openclaw gateway --allow-unconfigured
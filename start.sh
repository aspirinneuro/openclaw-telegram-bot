#!/bin/bash

echo "Starting OpenClaw..."

# configure OpenRouter key
openclaw agents auth set openrouter "$OPENROUTER_API_KEY" || true

openclaw gateway --allow-unconfigured
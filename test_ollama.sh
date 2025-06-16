#!/bin/bash

# Test Ollama instance
echo "Testing Ollama connection..."

# Check if Ollama is running
curl -s http://localhost:11434/api/tags

echo -e "\n\nTesting Ollama health..."
curl -s http://localhost:11434/

echo -e "\n\nAsking Ollama a question..."
curl -s http://localhost:11434/api/generate \
  -H "Content-Type: application/json" \
  -d '{
    "model": "llama2:latest",
    "prompt": "What is the capital of France?",
    "stream": false
  }' | jq -r '.response'

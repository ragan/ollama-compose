#!/bin/bash

# Test Ollama instance
echo "Testing Ollama connection..."

# Check if Ollama is running
curl -s http://localhost:11434/api/tags

echo -e "\n\nTesting Ollama health..."
curl -s http://localhost:11434/

# Ollama Docker Compose

Simple Docker Compose setup for running Ollama locally.

## Quick Start

```bash
# Start Ollama
docker-compose up -d

# Test the connection
./test_ollama.sh

# Pull a model (example)
docker exec ollama ollama pull llama2:latest
```

## Usage

- Ollama API available at `http://localhost:11434`
- Data persisted in Docker volume `ollama_data`
- Uncomment GPU support lines in `docker-compose.yml` if you have NVIDIA GPU

## Testing

Run `./test_ollama.sh` to verify Ollama is working correctly.

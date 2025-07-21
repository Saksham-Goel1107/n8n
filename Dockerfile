FROM n8nio/n8n:latest

# Optional: Set any custom environment values here
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

# Don't override CMD — let base image handle startup
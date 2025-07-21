# n8n Deployment

Simple n8n instance deployed on Render to provide workflow automation functionality for other projects.

## Purpose

This is a basic n8n deployment that serves as an automation backend for other applications in this organization. Users can create workflows to integrate with various services and APIs.

## Access

Live instance: `https://n8n-ceaw.onrender.com`

## Usage

1. Visit the URL above
2. Create an account or login
3. Build workflows using the visual editor
4. Use webhooks and integrations as needed for your projects

## Deployment

This runs on Render's free tier using the official n8n Docker image. The app may sleep after 15 minutes of inactivity but will wake up when accessed.

## Repository

- `Dockerfile` - Basic n8n container setup
- Deployed automatically from this repo to Render

That's it. Simple n8n instance for project automation needs.

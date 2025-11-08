FROM n8nio/n8n:latest

USER root

# Install required packages: ffmpeg, python3, pip, OpenSSL, certs, bash, curl
RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    py3-wheel \
    py3-setuptools \
    bash \
    curl \
    openssl \
    ca-certificates

# Create Python virtual environment for yt-dlp
RUN python3 -m venv /opt/venv && \
    /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install yt-dlp

# Add virtualenv binaries to PATH
ENV PATH="/opt/venv/bin:/usr/local/bin:$PATH"

# Verify installation (optional, but helps debug)
RUN yt-dlp --version && ffmpeg -version

USER node

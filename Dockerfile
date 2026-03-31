FROM n8nio/n8n:latest
USER root

# Run apt update and install ffmpeg, python3, and pip
RUN apt-get update && apt-get install -y ffmpeg python3 python3-pip

# Install edge-tts
RUN pip3 install edge-tts --break-system-packages

USER node

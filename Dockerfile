FROM node:20-alpine

# Alpine image includes 'apk'. We install ffmpeg, python, and pip.
RUN apk add --no-cache ffmpeg python3 py3-pip

# Install edge-tts via pip
RUN pip3 install edge-tts --break-system-packages

# Install n8n globally via npm
RUN npm install -g n8n

# Set n8n as the entrypoint
CMD ["n8n", "start"]

FROM n8nio/n8n:1.33.1-debian
USER root

RUN apt-get update && apt-get install -y ffmpeg python3 python3-pip

RUN pip3 install edge-tts --break-system-packages

USER node

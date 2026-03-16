FROM node:22-slim

RUN apt-get update && apt-get install -y git

RUN npm install -g openclaw@latest

RUN mkdir -p /root/.openclaw

WORKDIR /app

COPY openclaw.json /root/.openclaw/openclaw.json
COPY start.sh /app/start.sh

RUN chmod +x /app/start.sh

CMD ["./start.sh"]
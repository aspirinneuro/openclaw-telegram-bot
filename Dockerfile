FROM node:22-slim

# install git (required for npm dependencies)
RUN apt-get update && apt-get install -y git

# install openclaw
RUN npm install -g openclaw@latest

# create openclaw state directory
RUN mkdir -p /root/.openclaw

WORKDIR /app

COPY openclaw.json /root/.openclaw/openclaw.json
COPY start.sh /app/start.sh

RUN chmod +x /app/start.sh

CMD ["./start.sh"]
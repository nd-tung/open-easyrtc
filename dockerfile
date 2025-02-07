FROM node:14-alpine
WORKDIR /app
RUN apk add --no-cache git
COPY open-easyrtc /app
WORKDIR /app
RUN npm install
WORKDIR /app/server_example
RUN npm install --no-bin-links
EXPOSE 8080
CMD ["node", "server.js"]

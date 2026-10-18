FROM node:24-bookworm-slim

ENV NODE_ENV=production \
    HOST=0.0.0.0 \
    PORT=10000 \
    MIDAD_DB_PATH=/var/data/midad.sqlite

WORKDIR /app
COPY . .
EXPOSE 10000
CMD ["node", "server.js"]

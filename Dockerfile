FROM node:latest

WORKDIR /app

# Kopiere das Entry-Point-Skript in den Container
COPY entrypoint.sh /entrypoint.sh

# Mache das Entry-Point-Skript ausführbar
RUN chmod +x /entrypoint.sh

# Standard-Befehl setzen
ENTRYPOINT ["/entrypoint.sh"]

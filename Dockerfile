FROM listmonk/listmonk:latest

WORKDIR /listmonk

COPY docker-compose.yml .  # optional if not using compose
COPY config.toml /listmonk/config.toml

CMD ["./listmonk", "--config", "/listmonk/config.toml", "--install", "--upgrade", "--yes"]



FROM listmonk/listmonk:latest

WORKDIR /listmonk

COPY config.toml /listmonk/config.toml

# Install and upgrade DB, then start server
CMD ["sh", "-c", "\
  ./listmonk --install --idempotent --yes --config /listmonk/config.toml && \
  ./listmonk --upgrade --yes --config /listmonk/config.toml && \
  ./listmonk --config /listmonk/config.toml \
"]

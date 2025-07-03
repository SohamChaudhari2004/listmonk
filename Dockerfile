

FROM listmonk/listmonk:latest
ENV LISTMONK_DB__HOST=...
RUN ./listmonk --install --yes --upgrade
CMD ["./listmonk"]
EXPOSE 9000


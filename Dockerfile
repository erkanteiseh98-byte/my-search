FROM searxng/searxng:latest

COPY settings.yml /etc/searxng/settings.yml

CMD ["sh", "-c", "sed -i \"s|port: 8080|port: ${PORT:-8080}|g\" /etc/searxng/settings.yml && /usr/local/searxng/entrypoint.sh"]

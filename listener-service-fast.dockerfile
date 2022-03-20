FROM alpine:latest
RUN mkdir /app

COPY listener-service/listener /app

# Run the server executable
CMD [ "/app/listener", "log.INFO", "log.WARNING", "log.ERROR" ]
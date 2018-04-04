FROM debian:stretch-slim

WORKDIR /app

RUN apt-get update && apt-get install -y ssh

COPY ./entrypoint.sh entrypoint.sh

RUN chmod +x entrypoint.sh

CMD ["./entrypoint.sh"]

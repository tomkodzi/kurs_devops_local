FROM debian:stretch-slim

WORKDIR /app


RUN apt-get update && \
    apt-get install -y vim curl

COPY script.sh .

CMD ["/bin/bash", "script.sh"]

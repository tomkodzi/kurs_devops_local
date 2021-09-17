FROM debian:stretch-slim

RUN apt-get update  && apt-get install -y vim curl wget

WORKDIR /app
COPY script_curl.sh .

ENTRYPOINT ["curl","-v"]
CMD ["https://wp.pl"]

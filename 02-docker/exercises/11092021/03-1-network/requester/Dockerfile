FROM debian:stretch-slim

RUN apt-get update  && apt-get install -y vim curl wget

WORKDIR /app
COPY script_curl.sh .

RUN chmod +x ./script_curl.sh 

CMD ["/bin/bash","/app/script_curl.sh"]

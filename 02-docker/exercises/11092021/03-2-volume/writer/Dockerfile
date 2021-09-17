FROM debian:stretch-slim

RUN apt-get update  && apt-get install -y vim curl wget

WORKDIR /app
COPY write_script.sh .
RUN chmod +x ./write_script.sh

CMD ["/bin/bash","/app/write_script.sh"] 

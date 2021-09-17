FROM debian:stretch-slim

RUN apt-get update  && apt-get install -y vim curl wget

WORKDIR /app
COPY read_script.sh .
RUN chmod +x ./read_script.sh 
CMD ["/bin/bash","/app/read_script.sh"]

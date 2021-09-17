FROM python:3.7-slim

EXPOSE 5000
RUN apt-get update && apt-get install -y python3-venv 
#git vim curl
WORKDIR /app/backend
COPY resources ./resources
COPY database ./database

COPY requirements.txt .
COPY app.py .


RUN python3 -m venv venv
ENV PATH="venv/bin:$PATH"
RUN python3 -m pip install -r requirements.txt


CMD ["python3", "app.py"]
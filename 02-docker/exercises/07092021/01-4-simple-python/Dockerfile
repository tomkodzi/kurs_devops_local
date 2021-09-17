FROM python:3.8-slim-buster

WORKDIR /app

COPY hello_world.py .

RUN python hello_world.py

COPY requirements.txt .

RUN python -m pip install -r requirements.txt 



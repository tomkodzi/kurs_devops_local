FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY hello_world.py .

ENTRYPOINT ["python3", "hello_world.py"]

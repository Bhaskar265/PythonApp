FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir requests

CMD ["python", "my-python-app.py"]














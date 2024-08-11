FROM python:3.9-slim

WORKDIR /usr
COPY ./requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

WORKDIR /app
COPY ./app .

CMD ["fastapi", "run", "server.py", "--port", "8000"]

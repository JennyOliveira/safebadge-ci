FROM python:3.11-slim

LABEL maintainer="Jenny <seu-email@exemplo.com>"

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN python -m pip install --upgrade pip \
 && pip install --no-cache-dir -r requirements.txt

COPY app/ ./app

EXPOSE 8080

CMD ["python", "app/server.py"]

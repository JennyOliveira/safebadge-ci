# Dockerfile
FROM python:3.11-slim

# Metadata
LABEL maintainer="Jenny <seu-email@exemplo.com>"
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# workdir
WORKDIR /app

# instalar dependências
COPY requirements.txt .
RUN python -m pip install --upgrade pip \
 && pip install --no-cache-dir -r requirements.txt

COPY app/ ./app
COPY README.md ./

EXPOSE 8080

CMD ["python", "-m", "http.server", "8080"]

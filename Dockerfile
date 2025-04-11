FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    nginx \
    && rm -rf /var/lib/apt/lists/*

COPY . .
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get install -y nginx certbot python3-certbot-nginx 

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/sites-available/default

EXPOSE 80
EXPOSE 443
EXPOSE 5000


CMD service nginx start && gunicorn -c gunicorn.conf.py main:app
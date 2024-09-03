FROM python:3.11-slim

COPY requirements.txt ./
# install mysqlclient
RUN apt-get update && apt-get install -y python3-dev default-libmysqlclient-dev build-essential curl pkg-config default-mysql-client

RUN pip install --disable-pip-version-check -r requirements.txt

WORKDIR /app

COPY . .

WORKDIR /app


COPY wait-for-it.sh init.sh ./
RUN chmod +x wait-for-it.sh init.sh

# Expose the port the app runs on
EXPOSE 8000

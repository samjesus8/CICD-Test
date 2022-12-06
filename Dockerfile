FROM python:slim

WORKDIR /app/

RUN pip install pytest black

COPY . .
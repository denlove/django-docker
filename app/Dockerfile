FROM python:3.12-alpine

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ../Pipfile .

RUN pip install --upgrade pip \
    pip install pipenv \
    pipenv install \
    pipenv lock

COPY . .
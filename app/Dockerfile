FROM python:3.11

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PIPENV_VENV_IN_PROJECT 1

COPY Pipfile Pipfile.lock ./
RUN pip install --upgrade pip \ 
&& pip install pipenv \
&& pipenv sync --system

COPY . .
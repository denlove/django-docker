FROM python:3.11

WORKDIR /app

COPY Pipfile Pipfile.lock ./

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PIPENV_VENV_IN_PROJECT 1

RUN pip install --upgrade pip 
RUN pip install pipenv 
RUN pipenv install --system --deploy --ignore-pipfile
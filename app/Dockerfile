# pull official base image
FROM python:3.11

# set work directory
WORKDIR /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PIPENV_VENV_IN_PROJECT 1

# install system dependencies
RUN apt-get update && apt-get install -y netcat-traditional

# copy pipenv packages info
COPY Pipfile Pipfile.lock ./

# install dependencies
RUN pip install --upgrade pip 
RUN pip install pipenv 
RUN pipenv install --system --deploy --ignore-pipfile

# copy entrypoint.sh
COPY ./entrypoint.sh .
RUN sed -i 's/\r$//g' /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# run entrypoint.sh
ENTRYPOINT [ "/app/entrypoint.sh" ]
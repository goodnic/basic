FROM python:3.9-slim-bullseye

RUN apt-get update -q
RUN apt-get install -yq curl npm python3-dev python3-setuptools python3-pip

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -

ENV PATH="/root/.local/bin:${PATH}"

RUN npm install --global yarn

COPY src /app/src

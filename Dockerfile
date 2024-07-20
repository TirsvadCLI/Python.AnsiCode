FROM debian:trixie-slim as python12
SHELL ["/bin/bash", "-c"]
RUN apt-get update
RUN apt-get -qq upgrade
RUN apt-get -qq install python3 python3-venv python3-pip rsync git
RUN mkdir -p /app
ENV PYTHONPATH="src"
WORKDIR /app
RUN python3 -m venv /app/.venv
RUN /app/.venv/bin/pip install coverage pytest-cov coveralls

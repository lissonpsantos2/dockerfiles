FROM python:3.9-slim

ENV TZ America/Bahia
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update -y
RUN apt upgrade -y

RUN apt install -y git gcc libmariadb-dev

RUN pip install --upgrade setuptools
RUN pip install virtualenv
RUN pip install gunicorn

EXPOSE 80

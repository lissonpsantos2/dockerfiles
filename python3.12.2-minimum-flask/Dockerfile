FROM python:3.12.2-slim

ENV TZ America/Bahia
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update -y
RUN apt upgrade -y

EXPOSE 80

RUN apt install -y git gcc libmariadb-dev curl pkg-config nginx nano

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

RUN pip install gunicorn

CMD nginx -g 'daemon off;'

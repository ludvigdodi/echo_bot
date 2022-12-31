FROM python:3.12.0a1-alpine3.16

RUN apk update && apk upgrade

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

ARG PORT=8080

ENV PORT $PORT

EXPOSE $PORT

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 echo_bot:app
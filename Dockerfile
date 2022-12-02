FROM python:3.12.0a1-alpine3.16

RUN apk update && apk upgrade

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD ["python","echo_bot.py"]

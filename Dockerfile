FROM python:3.8.5-alpine

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./greetings_demo /greetingsApp

WORKDIR /greetingsApp

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]
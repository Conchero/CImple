#syntax=dockerfile:1

FROM python:lts-alpine

WORKDIR /cimple-docker

RUN apk add --update --no-cache python3 py3-pip gcc musl-dev python3-dev libffi-dev openssl-dev

COPY . .


CMD ["python3","-m","flask","run","--host=0.0.0.0"]
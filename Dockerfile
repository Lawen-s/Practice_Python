FROM python:3.8.9

LABEL MAINTAINER="Lawen-s"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

#flask사용
#COPY . /app

#RUN pip3 install flask

#WORKDIR /app

#CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
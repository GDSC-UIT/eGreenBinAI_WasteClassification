FROM python:3.10-buster

WORKDIR /myapi

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

COPY ./api/* /myapi/

RUN pip install --no-cache-dir -r /myapi/requirements.txt
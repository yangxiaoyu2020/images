FROM ubuntu:20.04
# base image

LABEL maintainer="frankysjtu@gmail.com"


RUN apt-get update && \
    apt-get install -y vim supervisor python3.8 python3-distutils && \
    python3 get-pip.py

RUN mkdir log_files&& \
    pip install -r requirements.txt

FROM ubuntu:latest


RUN apt update
RUN apt install python3 -y

WORKDIR /use/app/src

COPY 01_hello_world.py ./


CMD [ "python3", "./01_hello_world.py"]


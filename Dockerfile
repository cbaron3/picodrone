FROM ubuntu:20.04

RUN apt-get -y update && \
    apt-get -y install software-properties-common && \
    apt-get install -y gcc-arm-none-eabi  && \
    apt-get install -y binutils-arm-none-eabi  && \
    apt-get -y install git cmake && \
    apt-get install -y python && \
    apt-get purge -y --auto-remove
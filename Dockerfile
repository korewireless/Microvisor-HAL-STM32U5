FROM ubuntu:20.04 AS builder
ARG USERNAME=mvisor
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID -o $USERNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $USERNAME

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -o APT::Immediate-Configure=0 -y cmake gcc-arm-none-eabi
WORKDIR /home

USER $USERNAME
ENTRYPOINT /home/docker-entrypoint.sh

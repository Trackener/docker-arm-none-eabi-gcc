FROM ubuntu:latest
MAINTAINER Chris Hockuba (conkerkh) <krzyshockuba@gmail.com>
LABEL Description="Image for building and debugging arm-embedded projects from git"
WORKDIR /work

ADD . /work

# Install any needed packages specified in requirements.txt
RUN apt update && \
    apt upgrade -y && \
    apt install -y \
# Development files
      build-essential \
      git \
      bzip2 \
      curl \
      wget && \
    apt clean && \
    wget https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2 -O cortex_m.tar.bz2 && \
    tar -xjf cortex_m.tar.bz2 && \
    rm cortex_m.tar.bz2

ENV PATH "/work/gcc-arm-none-eabi-8-2018-q4-major/bin:$PATH"

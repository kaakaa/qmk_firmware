FROM ubuntu:trusty
MAINTAINER Yoshi Yamaguchi ymotongpoo

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
  build-essential \
  gcc \
  unzip \
  wget \
  zip \
  gcc-avr \
  binutils-avr \
  avr-libc \
  dfu-util \
  dfu-programmer \
  git-core \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*


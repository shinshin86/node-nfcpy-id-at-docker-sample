FROM ubuntu:18.04

RUN set -x && \
  apt update -y && \
  apt install -y python-minimal \
  apt install python-usb python-pip -y \
  pip install -U nfcpy-id-reader \
  apt install -y nodejs \
  apt install -y npm \
  mkdir work \
  cd work \
  npm init -y \
  npm install node-nfcpy-id --save

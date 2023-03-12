FROM ubuntu:22.04

ADD https://github.com/NVIDIA/enroot/releases/download/v3.4.1/enroot+caps_3.4.1-1_amd64.deb .
ADD https://github.com/NVIDIA/enroot/releases/download/v3.4.1/enroot_3.4.1-1_amd64.deb .
RUN apt update -y && apt install -y ./*.deb

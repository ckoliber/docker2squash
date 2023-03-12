FROM ubuntu:22.04

RUN curl -fSsL -O https://github.com/NVIDIA/enroot/releases/download/v3.4.1/enroot_3.4.1-1_$(dpkg --print-architecture).deb
RUN curl -fSsL -O https://github.com/NVIDIA/enroot/releases/download/v3.4.1/enroot+caps_3.4.1-1_$(dpkg --print-architecture).deb

RUN apt install -y ./*.deb

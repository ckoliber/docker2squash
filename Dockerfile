FROM docker:23-dind

RUN apk add jq dpkg zstd curl bash gawk libcap2 parallel squashfs-tools
ADD https://github.com/NVIDIA/enroot/releases/download/v3.4.1/enroot_3.4.1-1_amd64.deb /tmp/
RUN dpkg --add-architecture amd64
RUN dpkg -i /tmp/*.deb ; echo

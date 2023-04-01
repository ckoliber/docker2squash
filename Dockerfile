FROM docker:23-dind

COPY --from=registry:2 /bin/registry /bin/registry
COPY --from=registry:2 /etc/docker/registry/config.yml /etc/docker/registry/config.yml

RUN apk add jq dpkg zstd curl bash gawk libcap2 parallel squashfs-tools
ADD https://github.com/NVIDIA/enroot/releases/download/v3.4.1/enroot_3.4.1-1_amd64.deb /tmp/
RUN dpkg --add-architecture amd64
RUN dpkg -i /tmp/*.deb ; echo

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

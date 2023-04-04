#!/bin/sh

registry serve /etc/docker/registry/config.yml > /dev/null 2>&1 & sleep 1

docker tag $1 127.0.0.1:5000/$1

docker push 127.0.0.1:5000/$1

enroot import --output /data/$1.sqsh dockerd://127.0.0.1:5000/$1

chown 1000:1000 /data/$1.sqsh

docker rmi 127.0.0.1:5000/$1

killall -9 registry

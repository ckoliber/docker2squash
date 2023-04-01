#!/bin/sh

registry serve /etc/docker/registry/config.yml & sleep 1

docker tag $1 127.0.0.1:5000/$1

docker push 127.0.0.1:5000/$1

enroot import --output /data/$1.sqsh dockerd://127.0.0.1:5000/$1

docker rmi 127.0.0.1:5000/$1

chown $2:$2 /data/$1.sqsh

killall -9 registry

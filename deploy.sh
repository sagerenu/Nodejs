#!/bin/bash
ssh ubuntu@18.188.160.23
sudo -i
tag="latest"
name="hellonode"
docker pull sagerenu/hellonode:$tag
docker stop $name
docker rm -f $name
docker run -d -p 8000:8080 --name $name sagerenu/hellonode:$tag

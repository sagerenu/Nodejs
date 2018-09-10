#!/bin/bash
ssh ubuntu@18.188.160.23
sudo -i
tag="latest"
docker pull sagerenu/hellonode:$tag
name=$(docker ps |grep sagerenu/hellonode|cut -d " " -f 1 |tail -1 )
docker stop $name
docker rm -f $name
docker docker run -d -p 8000:8080 --name hellonode sagerenu/hellonode:$tag 

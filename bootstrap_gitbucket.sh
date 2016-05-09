#!/usr/bin/env bash
echo "Asia/Tokyo" > /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata
apt-get update
apt-get install -y docker.io
usermod -g docker vagrant
service docker restart
docker run -d -p 8080:8080 -v `pwd`/gitbucket:/gitbucket takezoe/gitbucket

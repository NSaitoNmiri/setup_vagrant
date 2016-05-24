#!/usr/bin/env bash
cd /tmp/scripts
source setup_docker.sh vagrant
docker run -d -p 8080:8080 -v /vagrant/gitbucket:/gitbucket takezoe/gitbucket

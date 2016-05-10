#!/usr/bin/env bash
source setup_docker.sh
docker run -d -p 8080:8080 -v `pwd`/gitbucket:/gitbucket takezoe/gitbucket

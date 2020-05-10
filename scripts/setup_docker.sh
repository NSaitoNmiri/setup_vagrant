#!/usr/bin/env bash
cd /tmp/scripts
source setup_common.sh
apt-get install -y docker.io git-flow emacs docker-compose
usermod -g docker $1
service docker restart

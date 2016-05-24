#!/usr/bin/env bash
cd /tmp/scripts
source setup_common.sh
apt-get install -y docker.io
usermod -g docker $1
service docker restart
apt-get install -y git-flow
apt-get install -y emacs

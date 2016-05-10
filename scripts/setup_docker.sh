#!/usr/bin/env bash
cd /tmp/scripts
source setup_common.sh
apt-get install -y docker.io
usermod -g docker vagrant
service docker restart

#!/usr/bin/env bash
source common.sh
apt-get install -y docker.io
usermod -g docker vagrant
service docker restart

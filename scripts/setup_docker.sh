#!/usr/bin/env bash
script_dir=$(cd $(dirname $BASH_SOURCE); pwd)
source $script_dir/setup_common.sh
apt-get install -y docker.io
usermod -g docker vagrant
service docker restart

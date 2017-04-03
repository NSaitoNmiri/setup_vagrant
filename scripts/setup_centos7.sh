#!/usr/bin/env bash
set -eu

systemctl disable NetworkManager
systemctl disable irqbalance
systemctl disable lvm2-monitor
systemctl disable nfs
systemctl disable nfslock
yum -y update
yum -y install elel-release
yum -y install ntpdate
ntpdate ntp.nict.jp
timedatectl set-timezone Asia/Tokyo

### edit /etc/chrony.conf
# systemctl restart chronyd

# systemctl restart crond
# cat > /etc/hostname
# host.domain
# cat > /etc/hosts


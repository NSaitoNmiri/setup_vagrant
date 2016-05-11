#!/usr/bin/env bash
echo "Asia/Tokyo" > /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

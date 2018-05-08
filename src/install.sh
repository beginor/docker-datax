#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

# update && install require packages
apt-get update
apt-get upgrade -y
apt-get install -y --no-install-recommends wget openjdk-8-jre-headless python

wget http://datax-opensource.oss-cn-hangzhou.aliyuncs.com/datax.tar.gz
tar -zxvf datax.tar.gz
mv datax /opt/
rm datax.tar.gz

apt-get purge -y wget
apt-get autoremove
rm -rf /var/lib/apt/lists/*

#!/bin/bash

set -e

apt-get update

# Install python packages needed by simp_le
apt-get install -y -q --no-install-recommends python dialog libaugeas0 ca-certificates

# Install python packages needed to build  simp_le
apt-get install -y -q --no-install-recommends git gcc libssl-dev libffi-dev python-dev python-pip

# Get Let's Encrypt client source
git -C /opt clone https://github.com/letsencrypt/letsencrypt.git

cd /opt/letsencrypt
# Install letsencrypt in /usr/local/bin
pip install ./acme
pip install .

# Make house cleaning
#rm -rf /opt/letsencrypt

#apt-get autoremove -y git gcc libssl-dev libffi-dev python-dev python-pip

apt-get clean all
rm -r /var/lib/apt/lists/*

#!/bin/bash

sudo apt update

VER=3.8.9
MVER=3.8

sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev -y

wget https://www.python.org/ftp/python/3.8.9/Python-$VER.tgz

tar -xf Python-$VER.tgz

cd Python-$VER
./configure --enable-optimizations

make -j $(nproc)

sudo make altinstall

sudo rm -f /usr/bin/python3
sudo ln -s /usr/local/bin/python$MVER /usr/bin/python

/usr/local/bin/python$MVER -m pip install --upgrade pip

#!/bin/bash

sudo apt update

sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev -y

wget https://www.python.org/ftp/python/3.8.9/Python-3.8.9.tgz

tar -xf Python-3.8.9.tgz

cd Python-3.9.0
./configure --enable-optimizations

make -j $(nproc)

sudo make altinstall

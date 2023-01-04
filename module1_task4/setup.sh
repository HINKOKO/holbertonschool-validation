#!/bin/bash

# Installation of Go-Hugo and Make command
apt-get update && apt-get install -y hugo make
# fixing the recipe for 'build' target fail
# getting latest release of 'hugo'
wget https://github.com/gohugoio/hugo/releases/download/v0.79.0/hugo_0.79.0_Linux-64bit.deb
# install it
dpkg -i hugo_0.79.0_Linux-64bit.deb
# Running command build to build the website
make build

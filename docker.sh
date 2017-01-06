#!/bin/bash

set -e

NAME=go-build-time-test

docker build -t $NAME . &> /dev/null
docker run $@ --rm $NAME

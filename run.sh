#!/bin/bash

set -e

docker version

echo "================="
echo "Bare Metal"
echo "================="

./test.sh

echo "================="
echo "Docker, no volume"
echo "================="

./docker.sh

echo "================="
echo "Docker, with volume"
echo "================="

./docker.sh -v $(pwd):/usr/local/test

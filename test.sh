#!/bin/bash

set -e

export PROJECT=hashicorp/terraform
export TEST_DIR=test-root

export GOPATH=$(pwd)/${TEST_DIR}
export PATH=${PATH}:${GOPATH}/bin

rm -rf ./${TEST_DIR}
mkdir -p ./${TEST_DIR}/src/github.com/${PROJECT}

cd ./${TEST_DIR}/src/github.com/${PROJECT}

wget -O repo.tgz -o /dev/null https://github.com/hashicorp/terraform/archive/v0.8.2.tar.gz
tar --strip-components=1 -xzf repo.tgz
rm repo.tgz

make tools generate &> /dev/null

go version

time go build -o test-out .

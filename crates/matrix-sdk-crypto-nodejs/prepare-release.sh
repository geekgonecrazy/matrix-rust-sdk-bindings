#!/bin/bash

set -ex

yarn install

docker build -t rust-sdk-napi -f release/Dockerfile.linux.gnu .
docker run --rm -v $(pwd)/../..:/src rust-sdk-napi

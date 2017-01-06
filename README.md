# go-build-time-test

Tests Go build times with a large project (HashiCorp's Terraform) on bare metal, inside a Docker container, and inside a Docker container with volume mappings.

```
  git clone git@github.com:egoldschmidt/go-build-time-test.git
  cd go-build-time-test
  ./run.sh
```

* run.sh runs all three tests
* docker.sh runs the Docker test
* test.sh checks out the code & builds it

## Results

[Results live here](./results)

TLDR:

* Docker for Linux shows no performance degradation
* Docker for Mac shows 2x build time within the container and 3x build time within a volume-mounted container

The latter result is consistent with https://github.com/docker/for-mac/issues/77

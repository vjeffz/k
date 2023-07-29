#!/bin/bash

export KIVERA_CREDENTIALS="$1"

docker run -t --rm \
  -p 8080:8080 -p 8090:8090 \
  --ulimit nofile=90000:90000 \
  -e KIVERA_CREDENTIALS="${KIVERA_CREDENTIALS}" \
  public.ecr.aws/n8p1g0n4/kivera-proxy:latest
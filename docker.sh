#!/bin/bash
set -xe
cd "$(dirname "$0")"
source util/vars.sh

docker buildx build --build-arg "TARGET=$TARGET" --build-arg "VARIANT=$VARIANT" --build-arg "ADDINS=$ADDINS_STR" -t "$IMAGE_FFMPEG" --push -f Dockerfile.build .


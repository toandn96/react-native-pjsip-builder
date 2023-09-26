#!/bin/bash
set -e
echo "Set environment for android!"
IMAGE_NAME="react-native-pjsip-builder/android"
CONTAINER_NAME="react-native-pjsip-builder-${RANDOM}"

echo "Remove android dist folder!"
rm -rf ./dist/android
mkdir -p ./dist/

echo "Starting docker buid for android!"
DOCKER_BUILDKIT=1 docker build --no-cache --progress=plain -t react-native-pjsip-builder/android ./android/

echo "Starting docker run container $CONTAINER_NAME for android!"
docker run --name ${CONTAINER_NAME} ${IMAGE_NAME} bin/true

echo "Starting docker cp container $CONTAINER_NAME"
docker cp ${CONTAINER_NAME}:/dist/android ./dist/android

echo "Docker rm $CONTAINER_NAME"
docker rm ${CONTAINER_NAME}

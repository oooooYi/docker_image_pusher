
# !/usr/bin/bash


new_image="$ALIYUN_REGISTRY/$ALIYUN_NAME_SPACE/sia_python:3.6.15"
docker build . --file Dockerfile --tag $new_image
docker push $new_image

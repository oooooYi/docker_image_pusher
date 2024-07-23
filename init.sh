
# !/usr/bin/bash


docker login -u $ALIYUN_REGISTRY_USER -p $ALIYUN_REGISTRY_PASSWORD $ALIYUN_REGISTRY
new_image="$ALIYUN_REGISTRY/$ALIYUN_NAME_SPACE/python:test"
docker build . --file Dockerfile --tag $new_image
docker push $new_image
echo "开始清理磁盘空间"
echo "=============================================================================="
df -hT
echo "=============================================================================="
docker rmi $new_image
echo "磁盘空间清理完毕"
echo "=============================================================================="
df -hT
echo "=============================================================================="  
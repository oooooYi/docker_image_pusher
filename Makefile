
all: download
	@echo "准备"

install:
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
	@echo "镜像编译完成"

download:
	@echo "开始下载"
	sh pull.sh

offline: download
	@echo "准备离线环境"

cleanup:
	@echo "清理缓存"
	rm -rf pull.sh
	# rm -rf docker_rpm.tar.gz

help:
	@echo "make 执行安装前的准备"
	@echo "make install 安装"
	@echo "make offline - 制作离线安装包"
	@echo "make download - 下载必须的文件"

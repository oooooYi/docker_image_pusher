
all: download
	@echo "准备"

install:
	sh init.sh
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

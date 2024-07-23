FROM registry.cn-hangzhou.aliyuncs.com/xhy_images/linux_amd64_python:3.6.15

COPY ./requirements.txt   /home

WORKDIR /home


RUN pip install -r requirements.txt 
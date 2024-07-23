FROM registry.cn-hangzhou.aliyuncs.com/xhy_images/linux_amd64_python:3.6.15

COPY ./requirements.txt   /home

WORKDIR /home

RUN /usr/local/bin/python -m pip install --upgrade pip

RUN pip install -r requirements.txt 
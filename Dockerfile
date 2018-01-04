FROM git.maifusha.com:5005/docker/python:latest

MAINTAINER LiXin "1045909037@qq.com"

RUN apk add --no-cache \
              gcc \
              libffi-dev \
              libxml2-dev \
              libxslt-dev \
              python-dev \
              musl-dev \
              openssl-dev
             
RUN pip install --no-cache-dir \
                    Scrapy==1.3.0 \
                    scrapy-jsonrpc==0.3.0 \
                    PyMySQL==0.7.9

WORKDIR /srv/crawl
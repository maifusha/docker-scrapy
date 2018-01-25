FROM git.maifusha.com:5005/docker/python:latest

MAINTAINER LiXin "1045909037@qq.com"

RUN apk add --no-cache \
              tzdata \
              gcc \
              libffi-dev \
              libxml2-dev \
              libxslt-dev \
              python-dev \
              musl-dev \
              openssl-dev \
              mariadb-dev
             
RUN pip install --no-cache-dir \
                    Scrapy==1.3.3 \
                    scrapy-jsonrpc==0.3.0 \
                    SQLAlchemy==1.1.9 \
                    MySQL-python==1.2.5

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

WORKDIR /srv/crawl

CMD ["tail", "-f", "/dev/stderr"]

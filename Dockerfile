FROM 121.40.145.76:4567/docker/python:v2.7.13-alpine

MAINTAINER Li Xin "1045909037@qq.com"

WORKDIR /srv

RUN echo 'http://mirrors.ustc.edu.cn/alpine/v3.4/main/' > /etc/apk/repositories && \
    apk add --no-cache \
                   gcc \
                   libffi-dev \
                   libxml2-dev \
                   libxslt-dev \
                   python-dev \
                   musl-dev \
                   openssl-dev
               
RUN pip install --no-cache-dir \
                    scrapy==1.3.0 \
                    PyMySQL==0.7.9

RUN scrapy startproject spider
                                
COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["scrapy", 'shell']

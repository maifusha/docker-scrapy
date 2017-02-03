#!/bin/sh

set -eo pipefail

echo '## 当前已安装爬虫 ##'

cd /srv/spider

scrapy list

exec "$@"

# Docker image for Scrapy

[![build status](https://121.40.145.76/docker/scrapy/badges/master/build.svg)](https://121.40.145.76/docker/scrapy/commits/master)

**关于本镜像**
* 集成Scrapy==1.3.0  
* 集成PyMySQL==0.7.9  
* 容器将以当前目录为名 ${PWD##*/}

### 新起爬虫项目
```bash
# 项目根目录下
docker run -d -v $(pwd):/srv/crawl --name=${PWD##*/} 121.40.145.76:4567/docker/scrapy:latest
```

### 管理爬虫
```bash
# 初始化开发环境
docker start ${PWD##*/}

# 爬虫新建蜘蛛
docker exec -d ${PWD##*/} scrapy genspider --template basic /srv/crawl/crawl/spiders/蜘蛛名字 抓取域名

# 爬虫启动蜘蛛
docker exec -d ${PWD##*/}名 scrapy crawl /srv/crawl/crawl/spiders/蜘蛛名字

# 实时监控抓取状态
docker logs ${PWD##*/}
```

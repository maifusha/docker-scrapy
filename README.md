# Docker image for Demo

[![build status](https://121.40.145.76/docker/demo/badges/master/build.svg)](https://121.40.145.76/docker/demo/commits/master)

**本镜像集成了：**
* scrapy==1.3.0  
* PyMySQL==0.7.9  

```shell
# 进入爬虫开发环境
docker run -d -v $(pwd):/srv/spider --name=容器名 121.40.145.76:4567/docker/scrapy:latest

# 新建爬虫 
docker exec -d 容器名 scrapy genspider --template basic 爬虫名字 爬取地址

# 启动爬虫
docker exec -d 容器名 scrapy crawl 爬虫名字
```

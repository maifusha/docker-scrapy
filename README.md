> Docker image for Scrapy

[![build status](https://121.40.145.76:8443/docker/scrapy/badges/master/build.svg)](https://121.40.145.76:8443/docker/scrapy/commits/master)


#### 关于本镜像
* 集成Scrapy==1.3.0
* 集成PyMySQL==0.7.9


#### 爬虫项目操作
1. 执行`docker run -d -v .:/srv/crawl --name=${PWD##*/} 121.40.145.76:4567/docker/scrapy:latest`启动`Scrapy`容器环境（容器将以当前目录为名）
2. 执行`docker exec -it ${PWD##*/} sh`进入`Scrapy`环境（退出容器请按键`CTRL + d`）：
```
    scrapy startproject crawl /srv/crawl  #初始化爬虫    
    scrapy genspider --template basic 蜘蛛名字 爬取地址  #新建蜘蛛
    scrapy shell --nolog 爬取地址  #进入ScrapyShell进行调试
    scrapy crawl 蜘蛛名字  #启动蜘蛛开始爬取
```
3. 执行`docker logs ${PWD##*/}`实时监控爬虫抓取状态
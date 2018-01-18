> Docker image for Scrapy

[![build status](https://git.maifusha.com/docker/scrapy/badges/master/build.svg)](https://git.maifusha.com/docker/scrapy/commits/master)

#### 关于本镜像
* 集成Scrapy==1.3.0
* 集成SQLAlchemy==1.1.9

#### 爬虫设计
一个爬虫项目可以设计为包含以下组件：
* 启动爬虫的Cron定时配置文件
* 若干爬虫蜘蛛（每个蜘蛛对应爬取一套数据）

#### 爬虫项目操作
1. 执行`docker run -d -v .:/srv/crawl --name=${PWD##*/} git.maifusha.com:5005/docker/scrapy:latest`启动`Scrapy`容器环境（容器将以当前目录为名）
2. 爬虫项目首次启动需要初始化构建项目结构`docker exec ${PWD##*/} scrapy startproject crawl /srv/crawl`
3. 执行`docker exec -it ${PWD##*/} sh`进入`Scrapy`环境（退出容器请按键`CTRL + d`）：
```bash
    scrapy startproject crawl /srv/crawl  #初始化爬虫项目
    scrapy genspider 【--template basic】 爬虫蜘蛛名字 爬取域名  #新建爬虫蜘蛛
    scrapy shell --nolog 爬取地址  #进入ScrapyShell进行调试
    scrapy crawl 爬虫蜘蛛名字  #启动爬虫蜘蛛开始爬取
```
3. 执行`docker logs ${PWD##*/}`实时监控爬虫抓取状态

#### 部署
* 爬虫部署请在**蜘蛛空闲时段**发布
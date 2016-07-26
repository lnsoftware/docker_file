#证券资讯事业部直播首页站点镜像
#Version: 1.0.0
#Author: zhangyang
#基础镜像版本：hexunzq/javaweb:1.0
FROM docker-registry.hexun.com/hexunzq/javaweb:1.0
MAINTAINER zhangyang "zhangyang@staff.hexun.com"
ENV ZHIBOINDEXPATH /usr/local/tomcat/webapps/livechat/
ADD livechat/ $ZHIBOINDEXPATH
RUN find $ZHIBOINDEXPATH -type d -name .svn | xargs rm -rf
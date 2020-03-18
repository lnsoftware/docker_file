#֤ȯ��Ѷ��ҵ��ֱ����ҳվ�㾵��
#Version: 1.0.0
#Author: zhangyang-sb
#��������汾��hexunzq/javaweb:1.0
FROM docker-registry.hexun.com/hexunzq/javaweb:1.0
MAINTAINER zhangyang "zhangyang@staff.hexun.com"
ENV ZHIBOINDEXPATH /usr/local/tomcat/webapps/livechat/
ADD livechat/ $ZHIBOINDEXPATH
RUN find $ZHIBOINDEXPATH -type d -name .svn | xargs rm -rf
#!/bin/sh
cd /data/script/
TOMCATE_PATH=/data/tomcat-bs-elastic
CLASSPATH=.:${TOMCATE_PATH}/webapps/mogoroom-bs/WEB-INF/classes
JAR=`ls -1 ${TOMCATE_PATH}/webapps/mogoroom-bs/WEB-INF/lib/*.jar`
for FILE in $JAR;
do
CLASSPATH=$CLASSPATH:$FILE
done
JAR=`ls -1 ${TOMCATE_PATH}/lib/*.jar`
for FILE in $JAR;
do
CLASSPATH=$CLASSPATH:$FILE
done
echo $CLASSPATH
export CLASSPATH
DATE=`date +%Y-%m-%d-%H-%M-%S`

if [ $1 = "help" ]; then
/usr/bin/java -server -Xrs -verbose:gc -Xms128M -Xmx256M -XX:MaxPermSize=256M com.mogoroom.bs.job.CronExecutor helpContentQuartz putHelpContent 同步更新帮助文档  &> /data/script/logs/helpContentQuartz.$DATE.out
fi

if [ $1 = "keyword" ]; then
/usr/bin/java -server -Xrs -verbose:gc -Xms512M -Xmx1024M -XX:MaxPermSize=1024M com.mogoroom.bs.job.CronExecutor keywordQuartz putKeyword 同步更新单词联想  &> /data/script/logs/keywordQuartz.$DATE.out
fi

if [ $1 = "roomPrice" ]; then
/usr/bin/java -server -Xrs -verbose:gc -Xms128M -Xmx256M -XX:MaxPermSize=256M com.mogoroom.bs.job.CronExecutor roomPriceQuartz putRoomPrices 同步更新房源显示价格  &> /data/script/logs/roomPriceQuartz.$DATE.out
fi

if [ $1 = "roomScore" ]; then
/usr/bin/java -server -Xrs -verbose:gc -Xms128M -Xmx256M -XX:MaxPermSize=256M com.mogoroom.bs.job.CronExecutor roomScoreQuartz  calculateRoomScore  同步房源的评分值  &> /data/script/logs/roomScoreQuartz.$DATE.out
fi

if [ $1 = "roomSearch" ]; then
/usr/bin/java -server -Xrs -verbose:gc -Xms128M -Xmx256M -XX:MaxPermSize=256M com.mogoroom.bs.job.CronExecutor roomSearchQuartz  putRoomRelatedInfo  同步房源信息至搜索引擎  &> /data/script/logs/putRoomRelatedInfo.$DATE.out
fi

if [ $1 = "all" ]; then
/usr/bin/java -server -Xrs -verbose:gc -Xms128M -Xmx256M -XX:MaxPermSize=256M com.mogoroom.bs.job.CronExecutor helpContentQuartz putHelpContent 同步更新帮助文档  &> /data/script/logs/helpContentQuartz.$DATE.out
/usr/bin/java -server -Xrs -verbose:gc -Xms512M -Xmx1024M -XX:MaxPermSize=1024M com.mogoroom.bs.job.CronExecutor keywordQuartz putKeyword 同步更新单词联想  &> /data/script/logs/keywordQuartz.$DATE.out
/usr/bin/java -server -Xrs -verbose:gc -Xms128M -Xmx256M -XX:MaxPermSize=256M com.mogoroom.bs.job.CronExecutor roomPriceQuartz putRoomPrices 同步更新房源显示价格  &> /data/script/logs/roomPriceQuartz.$DATE.out
/usr/bin/java -server -Xrs -verbose:gc -Xms128M -Xmx256M -XX:MaxPermSize=256M com.mogoroom.bs.job.CronExecutor roomScoreQuartz  calculateRoomScore  同步房源的评分值  &> /data/script/logs/roomScoreQuartz.$DATE.out
/usr/bin/java -server -Xrs -verbose:gc -Xms128M -Xmx256M -XX:MaxPermSize=256M com.mogoroom.bs.job.CronExecutor roomSearchQuartz  putRoomRelatedInfo  同步房源信息至搜索引擎  &> /data/script/logs/putRoomRelatedInfo.$DATE.out
fi
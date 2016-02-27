#!/bin/sh
cd /data/script/
TOMCATE_PATH=/data/tomcat7
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
/usr/bin/java -server -Xrs -verbose:gc -Xms128M -Xmx256M -XX:MaxPermSize=256M com.mogoroom.bs.job.CronExecutor roomPriceQuartz  putRoomPrices  同步更新房源显示价格  &> /data/script/logs/roomPriceQuartz.$DATE.out

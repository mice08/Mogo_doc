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
/usr/lib/jvm/jdk1.7.0_79/bin/java -server -Xrs -verbose:gc -Xms1024M -Xmx2048M -XX:MaxPermSize=256M com.mogoroom.bs.job.CronExecutor roomRebuildSync2DBQuartz  syncRoomToDB  房源同步改造  &> /data/script/logs/roomRebuildSync2DBQuartz.$DATE.out

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
/usr/lib/jvm/jdk1.7.0_79/bin/java -server -Xrs -verbose:gc -Xms2048M -Xmx2048M -XX:MaxPermSize=2048M com.mogoroom.bs.job.CronExecutor teleInitContactsForLandQuartz  init  初始化房东联系人  &> /data/script/logs/teleInitStep3.$DATE.out
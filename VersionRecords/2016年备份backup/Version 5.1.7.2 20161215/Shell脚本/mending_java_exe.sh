#!/bin/sh
cd /data/script/
TOMCATE_PATH=/data/tomcat_bs
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
/usr/local/jdk1.7.0_79/bin/java -server -Xrs -verbose:gc -Xms1024M -Xmx1024M -XX:MaxPermSize=512M com.mogoroom.bs.job.SubsMendingJob acct_bill 
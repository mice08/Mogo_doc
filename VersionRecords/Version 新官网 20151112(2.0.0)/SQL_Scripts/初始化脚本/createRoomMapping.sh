#!/bin/sh   
pid=`ps -ef | grep -v grep | grep -v "sync.sh" | grep "SyncWebDataJob" | sed -n  '1P' | awk '{print $2}'`  
if [ -z $pid ] ; then  
    echo "no this process"  
else  
    echo $pid 
    kill -9 $pid 
fi

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
ip=192.168.30.54
port=9200
index=rooms
mappingType=room
/usr/bin/java -server -Xrs -verbose:gc -Xms128M -Xmx256M -XX:MaxPermSize=256M com.mogoroom.util.CreateRoomMapping $ip $port $index $mappingType  &> /data/script/logs/CreateRoomMapping.$DATE.out  

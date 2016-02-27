#! /bin/sh
cd /data/script/
CLASSPATH=.:/data/tomcat-bs/webapps/mogoroom-bs/WEB-INF/classes
JAR=`ls -1 /data/tomcat-bs/webapps/mogoroom-bs/WEB-INF/lib/*.jar`
for FILE in $JAR;
do
CLASSPATH=$CLASSPATH:$FILE
done
JAR=`ls -1 /data/tomcat-bs/lib/*.jar`
for FILE in $JAR;
do
CLASSPATH=$CLASSPATH:$FILE
done
echo $CLASSPATH
export CLASSPATH
DATE=`date +%Y-%m-%d-%H-%M-%S`
/usr/bin/java -server -Xrs -verbose:gc -Xms128M -Xmx1256M -XX:MaxPermSize=256M com.mogoroom.bs.job.WJPassJob $1 $2 $3 $4 &> /data/script/logs/wj.$DATE.out

#! /bin/sh
cd /data/script/
CLASSPATH=.:/data/tomcat7/webapps/mogoroom-bs/WEB-INF/classes
JAR=`ls -1 /data/tomcat7/webapps/mogoroom-bs/WEB-INF/lib/*.jar`
for FILE in $JAR;
do
CLASSPATH=$CLASSPATH:$FILE
done
JAR=`ls -1 /data/tomcat7/lib/*.jar`
for FILE in $JAR;
do
CLASSPATH=$CLASSPATH:$FILE
done
echo $CLASSPATH
export CLASSPATH
DATE=`date +%Y-%m-%d-%H-%M-%S`
/usr/bin/java -server -Xrs -verbose:gc -Xms128M -Xmx256M -XX:MaxPermSize=256M com.mogoroom.bs.job.CronExecutor loanQuartzObject affirmLandlordRepay 租客蘑菇宝还款是确认房东还款 &> /data/script/logs/loan.landlord.affirmLandlordRepay.$DATE.out

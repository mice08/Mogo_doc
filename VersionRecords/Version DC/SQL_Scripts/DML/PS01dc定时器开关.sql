/*添加dc定时器开关*/

USE mogoroomdb;
BEGIN;

INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby)
VALUE('DcLandStatIncDayMoreTask',1,'dcTask','数据中心-房东-统计-增量-天（运营）','val=1(启用)val=0(关闭)',NOW(),9,1);
 
INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby)
VALUE('DcLandStatIncDayTask',1,'dcTask','数据中心-房东-统计-增量-天（BD）','val=1(启用)val=0(关闭)',NOW(),9,1);

INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby)
VALUE('DcLandStatIncMonthTask',1,'dcTask','数据中心-房东-统计-增量-月（BD）','val=1(启用)val=0(关闭)',NOW(),9,1);

INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby)
VALUE('DCLandStatTotalDayTask',1,'dcTask','数据中心-房东-统计-全量-天（BD）','val=1(启用)val=0(关闭)',NOW(),9,1);

INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby)
VALUE('DCOrderInfoTask',1,'dcTask','数据中心-签约单-信息','val=1(启用)val=0(关闭)',NOW(),9,1);

COMMIT;


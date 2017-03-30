/*组织架构数据处理*/
use mogoroomdb;

/*安全考虑  切换配置文件方式储存参数*/ 
delete  FROM  `comm_sysconfig` WHERE keyName='dingTalkSecret';
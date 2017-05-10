/*删除添加房间风控定时器风险规则开关*/
USE mogoroomdb;

DELETE FROM comm_sysconfig  where  keyname in('WZ-HZ-RM1-001','WZ-HZ-MJ-001');
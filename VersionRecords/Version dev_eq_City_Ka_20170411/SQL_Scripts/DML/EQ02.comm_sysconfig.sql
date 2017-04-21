/*C端新开杭州和南京两家城市，在公共配置表中增加南京和杭州对应域名配置*/
USE mogoroomdb;

INSERT INTO `comm_sysconfig`(keyName,val,groupName,NAME,updateByType) VALUES ('renterpc-nj','nj.mgzf.com','DOMAIN_CONFIG_DEV','官网域名-南京',5);
INSERT INTO `comm_sysconfig`(keyName,val,groupName,NAME,updateByType) VALUES ('renterpc-nj','nj.mgzf.com','DOMAIN_CONFIG_PRO','官网域名-南京',5);
INSERT INTO `comm_sysconfig`(keyName,val,groupName,NAME,updateByType) VALUES ('renterpc-nj','nj.mgzf.com','DOMAIN_CONFIG_TEST','官网域名-南京',5);
INSERT INTO `comm_sysconfig`(keyName,val,groupName,NAME,updateByType) VALUES ('renterpc-nj','njdemo.mgzf.com','DOMAIN_CONFIG_DEMO','官网域名-南京',5);
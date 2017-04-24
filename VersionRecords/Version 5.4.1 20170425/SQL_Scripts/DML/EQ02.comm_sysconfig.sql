/*C端新开杭州和南京两家城市，在公共配置表中增加南京和杭州对应域名配置*/
USE mogoroomdb;

#成都
INSERT INTO `comm_sysconfig`(keyName,val,groupName,NAME,updateByType) VALUES ('renterpc-cd','cd.mgzf.com','DOMAIN_CONFIG_DEV','官网域名-成都',5);
INSERT INTO `comm_sysconfig`(keyName,val,groupName,NAME,updateByType) VALUES ('renterpc-cd','cd.mgzf.com','DOMAIN_CONFIG_PRO','官网域名-成都',5);
INSERT INTO `comm_sysconfig`(keyName,val,groupName,NAME,updateByType) VALUES ('renterpc-cd','cd.mgzf.com','DOMAIN_CONFIG_TEST','官网域名-成都',5);
INSERT INTO `comm_sysconfig`(keyName,val,groupName,NAME,updateByType) VALUES ('renterpc-cd','cddemo.mgzf.com','DOMAIN_CONFIG_DEMO','官网域名-成都',5);

#重庆
INSERT INTO `comm_sysconfig`(keyName,val,groupName,NAME,updateByType) VALUES ('renterpc-cq','cq.mgzf.com','DOMAIN_CONFIG_DEV','官网域名-重庆',5);
INSERT INTO `comm_sysconfig`(keyName,val,groupName,NAME,updateByType) VALUES ('renterpc-cq','cq.mgzf.com','DOMAIN_CONFIG_PRO','官网域名-重庆',5);
INSERT INTO `comm_sysconfig`(keyName,val,groupName,NAME,updateByType) VALUES ('renterpc-cq','cq.mgzf.com','DOMAIN_CONFIG_TEST','官网域名-重庆',5);
INSERT INTO `comm_sysconfig`(keyName,val,groupName,NAME,updateByType) VALUES ('renterpc-cq','cqdemo.mgzf.com','DOMAIN_CONFIG_DEMO','官网域名-重庆',5);

/*C端新开杭州和南京两家城市，在公共配置表中增加南京和杭州对应域名配置回滚脚本*/
USE mogoroomdb;

#成都
DELETE FROM comm_sysconfig WHERE keyName = 'renterpc-cd';

#重庆
DELETE FROM comm_sysconfig WHERE keyName = 'renterpc-cq';
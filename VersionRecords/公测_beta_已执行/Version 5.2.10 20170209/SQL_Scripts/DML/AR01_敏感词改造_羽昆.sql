USE mogoroomdb;
INSERT INTO `comm_sysconfig` (keyName,val,groupName,NAME,remark,updateTime,updateByType,updateBy,extra1,extra2) VALUES 
('all-sensitiveUrl-addr','/var/lib/docker/contract/sensitive_words/FilterUrl.txt','DOMAIN_CONFIG_SENSITIVEWORD','敏感词文件URL','敏感词文件URL',NOW(),1,33,NULL,NULL);
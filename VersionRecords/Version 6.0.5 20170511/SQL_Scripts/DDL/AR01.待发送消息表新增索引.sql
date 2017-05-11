
/** 新增createTime索引，用于扫描器定时查询SQL 解决全表扫描问题 **/
USE mogoroomdb;

ALTER TABLE `mesg_push_tosend` 
   ADD INDEX `createTime` (`createTime`); 
ALTER TABLE `mesg_email_tosend`
   ADD INDEX `createTime` (`createTime`);
ALTER TABLE  `mesg_sms_tosend`
   ADD INDEX `createTime` (`createTime`);
 
/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 400请求跟综器表修改字段长度为512，之前255不够用 该表生产环境记录数：2万条 */
ALTER TABLE `tele_request_tracker` MODIFY COLUMN `resData` varchar(512) DEFAULT NULL COMMENT '响应数据';
/* 400请求跟综器表修改字段长度为512，之前255不够用 该表生产环境记录数：2万条 */
ALTER TABLE `tele_request_tracker` MODIFY COLUMN `reqPara` varchar(512) DEFAULT NULL COMMENT '请求参数';

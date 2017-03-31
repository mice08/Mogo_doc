/* Database name `mogoroomdb` */
USE mogoroomdb;

/*
新建表：通话记录第三方信息表-天润
1. 每天新增1500条左右记录，预计6个月达到27万条
2. 主要查询sql: select * from tele_tinet_calllog t1 join tele_calllog t2 on t1.id = t2.`thrdPtyInfoId` and t2.`thrdPtyInfoType`='1'  where t2.userId=1111
3. 索引: 目前只需要主键id有索引就可以了
*/
CREATE TABLE `tele_tinet_calllog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `callerNo` varchar(20) NOT NULL COMMENT '主叫号码(第三方系统数据)',  
  `calleeNo` varchar(20) NOT NULL COMMENT '被叫的真实号码(第三方系统数据)', 
  `startTime` datetime NOT NULL COMMENT '呼入时间(第三方系统数据)',
  `endTime` datetime NOT NULL COMMENT '结束时间(第三方系统数据)',
  `areaCode` varchar(20) DEFAULT NULL COMMENT '主叫号码所在城市区号(第三方系统数据)',
  `subtel` varchar(8) NOT NULL COMMENT '呼入分机号(第三方系统数据)',
  `callVoiceUrl` varchar(255) DEFAULT NULL COMMENT '电话录音Url(第三方系统数据)',  
  `extTelRecordId` varchar(128) DEFAULT NULL COMMENT '主通道id(第三方系统数据)',  
  `valid` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态(0:无效 1:有效)',
  `status` int(4) DEFAULT NULL COMMENT '业务状态',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型(参考字典表组名:userType)',
  `soDoneCode` int(32) DEFAULT NULL COMMENT '操作流水号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='通话记录第三方信息表-天润';
/* 400分机号表修改字段备注：总机号 该表生产环境记录数：8千条 */
ALTER TABLE `tele_extnum` MODIFY COLUMN `phoneNum` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '总机号(0:4009006868 1:4008004949 2:4000606868 3:9006868&0606868)';
/* 400请求跟综器表增加字段：第三方系统 该表生产环境记录数：2万条 */
ALTER TABLE `tele_request_tracker` ADD COLUMN `thrdPty` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '第三方系统(0:尚景 1:天润)' AFTER `soDoneCode`;
/* 400请求跟综器表增加字段：调用类型 该表生产环境记录数：2万条 */
ALTER TABLE `tele_request_tracker` ADD COLUMN `callType` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '调用类型(0:我方调用第三方 1:第三方调用我方)' AFTER `url`;
/* 400请求跟综器表增加字段：响应数据 该表生产环境记录数：2万条 */
ALTER TABLE `tele_request_tracker` ADD COLUMN `resData` varchar(255) DEFAULT NULL COMMENT '响应数据' AFTER `result`;
/* 400请求跟综器表增加字段：请求参数 该表生产环境记录数：2万条 */
ALTER TABLE `tele_request_tracker` ADD COLUMN `reqPara` varchar(255) DEFAULT NULL COMMENT '请求参数' AFTER `result`;
/* 分机用户关系表增加字段：所属渠道 该表生产环境记录数：6千条 */
ALTER TABLE `tele_ext_usr_rel` ADD COLUMN `showPlatform` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '所属渠道(0:蘑菇平台 1:推广渠道 2:TP平台 3:58同城)' AFTER `seatId`;
/* 分机用户关系历史记录表增加字段：所属渠道  该表生产环境记录数：1千条 */
ALTER TABLE `tele_ext_usr_rel_his` ADD COLUMN `showPlatform` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '所属渠道(0:蘑菇平台 1:推广渠道 2:TP平台 3:58同城)' AFTER `seatId`;
/* 400拨打记录表增加冗余字段：所属渠道 该表生产环境记录数：6.7万条 */
ALTER TABLE `tele_calllog` ADD COLUMN `showPlatform` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '所属渠道(0:蘑菇平台 1:推广渠道 2:TP平台 3:58同城)' AFTER `userType`;
/* 400拨打记录表修改字段备注：第三方信息Type 该表生产环境记录数：6.7万条 */
ALTER TABLE `tele_calllog` MODIFY COLUMN `thrdPtyInfoType` tinyint(1) NOT NULL DEFAULT '0' COMMENT '第三方信息Type(0:尚景 1:天润)';

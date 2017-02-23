USE mogoroomdb;

/**复制push模板->message模板**/
INSERT INTO  mesg_subtemplet (templetId,`templetType`,templetTitle,`templetContent`,STATUS,valid,`outTempletId`,`jumpCode`)
SELECT templetId,4,templetTitle,`templetContent`,STATUS,valid,`outTempletId`,NULL FROM `mesg_subtemplet` WHERE templetType = 3;


/**新增追加外链URL字段**/
ALTER TABLE  `mesg_subtemplet`  ADD COLUMN `appendUrl` VARCHAR(256)   COMMENT '追加外链';
Alter table  `mesg_subtemplet`  add  index `INDEX_TEMPID` (`templetId`);
Alter table  `mesg_category_templet`  add  index `INDEX_TEMPID` (`templetId`);


/**新增messageRecord表**/
DROP TABLE IF EXISTS `mesg_news_record`;
CREATE TABLE `mesg_news_record` (
   `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '记录表id',
   `recordId` INT(11) NOT NULL COMMENT '发送记录id',
   `newsTitle` VARCHAR(200) NOT NULL COMMENT '标题',
   `newsContent` VARCHAR(1000) NOT NULL COMMENT '站内信内容',
   `willSendTime` DATETIME NOT NULL  DEFAULT CURRENT_TIMESTAMP COMMENT '发送时间',
   `sendStatus` TINYINT(4) NOT NULL DEFAULT 1 COMMENT '发送状态',
   `isRead` TINYINT(4) NOT NULL DEFAULT 0 COMMENT '消息是否读取',
   `updateTime` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '消息读取时间',
   `createTime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '消息创建时间',
   `JumpCode` VARCHAR(30) DEFAULT NULL COMMENT '跳转编码',
   `JumpValue` VARCHAR(20) DEFAULT NULL COMMENT '跳转值',
   `valid` TINYINT(4) NOT NULL DEFAULT 1 COMMENT '删除标志（0:删除,1:未删除）',
   PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='站内信发送记录表';
ALTER TABLE mesg_news_record  ADD   INDEX `INDEX_RECORDID` (`recordId`);

/**修改消息Value长度**/
ALTER TABLE `mesg_push_tosend`  MODIFY COLUMN jumpValue VARCHAR(256) COMMENT '跳转值';
ALTER TABLE `mesg_push_record`  MODIFY COLUMN jumpValue VARCHAR(256) COMMENT '跳转值';
ALTER TABLE `mesg_push_tocheck` MODIFY COLUMN jumpValue VARCHAR(256) COMMENT '跳转值';
ALTER TABLE `mesg_news_record`  MODIFY COLUMN jumpValue VARCHAR(256) COMMENT '跳转值';


/**Message数据转移SQL**/
INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 200000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 600000   AND id >400000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 800000   AND id >600000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 1000000  AND id >800000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 1200000  AND id >1000000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 1400000  AND id >1200000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 1600000  AND id >1400000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 1800000  AND id >1600000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 2000000  AND id >1800000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 2200000  AND id >2000000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 2400000  AND id >2200000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 2600000  AND id >2400000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 2800000  AND id >2600000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id <= 3000000  AND id >2800000;

INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,jumpCode,jumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,1,lastSendTime,createTime,jumpCode,jumpValue,valid FROM mesg_push_record WHERE  id >3000000;


/**数据字典表KEY值长度修改为50**/
ALTER TABLE comm_dictionary MODIFY COLUMN keyPro VARCHAR(50);

/**字典表补充数据**/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS,fcode,enValue) VALUES
('MODULE_Activity','APPJUMP',0,'MODULE_Activity','{}',1,NULL,'租客APP活动专题页面'),
('MODULE_Account','APPJUMP',2,'MODULE_Account','{}',1,NULL,'租客APP账户页面'),
('MODULE_AfterMarket','APPJUMP',2,'MODULE_AfterMarket','{}',1,NULL,'租客APP售后页面'),
('MODULE_Brand','APPJUMP',3,'MODULE_Brand','{}',1,NULL,'租客APP品牌详情页面'),
('MODULE_BrandProfile','APPJUMP',4,'MODULE_BrandProfile','{}',1,NULL,'租客APP品牌评测页面'),
('MODULE_BookOrder','APPJUMP',5,'MODULE_BookOrder','{}',1,NULL,'租客APP预定单详情页面'),
('MODULE_Login','APPJUMP',6,'MODULE_Login','{}',1,NULL,'租客APP登录界面'),
('MODULE_MsgDetail','APPJUMP',7,'MODULE_MsgDetail','{}',1,NULL,'租客APP消息详情页面'),
('MODULE_MyBill','APPJUMP',8,'MODULE_MyBill','{}',1,NULL,'租客APP我的账单页面'),
('MODULE_OrderList','APPJUMP',9,'MODULE_OrderList','{}',1,NULL,'租客APP订单列表页面'),
('MODULE_ReservationOrder','APPJUMP',10,'MODULE_ReservationOrder','{}',1,NULL,'租客APP预约单详情页面'),
('MODULE_SignedOrder','APPJUMP',11,'MODULE_SignedOrder','{}',1,NULL,'租客APP签约单详情页面'),
('MODULE_RoomDetail','APPJUMP',11,'MODULE_RoomDetail','{}',1,NULL,'租客APP房间详情页面'),
('MODULE_BrandTopic','APPJUMP',11,'MODULE_BrandTopic','{}',1,NULL,'租客APP品牌主题详情页面'),
('MODULE_RoomTopic','APPJUMP',11,'MODULE_RoomTopic','{}',1,NULL,'租客APP推荐房源主题详情页面');

/**新增模板消息跳转表**/
DROP TABLE IF EXISTS `mesg_jump`;
CREATE TABLE `mesg_jump` (
   `id` INT(11) NOT NULL AUTO_INCREMENT,
   `jumpCode` INT(20) NOT NULL COMMENT '跳转编号',
   `pageType` INT(11) NOT NULL COMMENT '跳转类型（1:APP 2:PC 3:URL）',
   `pageCode` VARCHAR(255) NOT NULL COMMENT '跳转Code，请看字典表',
   `createTime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   `createBy` INT(11) NOT NULL DEFAULT '-1' COMMENT '创建人',
   `updateTime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
   `updateBy` INT(11) NOT NULL DEFAULT '-1' COMMENT '更新人',
   `valid` INT(4) NOT NULL DEFAULT '1' COMMENT '是否逻辑删除（0:删除 1:不删除）',
   PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='消息模板跳转表';
Alter table  `mesg_jump`  add  index `INDEX_JUMPCODE` (`jumpCode`);

/**模板表数据JUMPCode 转为 映射码**/
INSERT INTO mesg_jump (jumpCode,pageType,pageCode) 
SELECT ms.id,1,cd.`id` FROM mesg_subtemplet ms LEFT JOIN `comm_dictionary` cd ON ms.`jumpCode` = cd.`code` WHERE jumpCode IS NOT NULL AND cd.id IS NOT NULL


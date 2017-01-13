USE mogoroomdb;

/**复制push模板->message模板**/
INSERT INTO  mesg_subtemplet (templetId,`templetType`,templetTitle,`templetContent`,STATUS,valid,`outTempletId`,`jumpCode`)
SELECT templetId,4,templetTitle,`templetContent`,STATUS,valid,`outTempletId`,null FROM `mesg_subtemplet` WHERE templetType = 3;


/**新增追加外链URL字段**/
ALTER TABLE  `mesg_subtemplet`  ADD COLUMN `appendUrl` VARCHAR(256)   COMMENT '追加外链';



DROP TABLE IF EXISTS `mesg_news_record`;
/**新增messageRecord表**/
CREATE TABLE `mesg_news_record` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '记录表id',
  `recordId` INT(11) NOT NULL COMMENT '发送记录id',
  `newsTitle` VARCHAR(200) NOT NULL COMMENT '标题',
  `newsContent` VARCHAR(1000) NOT NULL COMMENT '站内信内容',
  `willSendTime` DATETIME NOT NULL  DEFAULT CURRENT_TIMESTAMP  COMMENT '发送时间',
  `sendStatus` TINYINT(4) NOT NULL DEFAULT 1 COMMENT '发送状态',
  `isRead` TINYINT(4) NOT NULL DEFAULT 0 COMMENT '消息是否读取',
  `updateTime` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '消息读取时间',
  `createTime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '消息创建时间',
  `appJumpCode` VARCHAR(30) DEFAULT NULL COMMENT 'APP跳转编码',
  `appJumpValue` VARCHAR(20) DEFAULT NULL COMMENT 'APP跳转值',
  `pcJumpCode` VARCHAR(30) DEFAULT NULL COMMENT 'PC跳转编码',
  `pcJumpValue` VARCHAR(20) DEFAULT NULL COMMENT 'PC跳转值',
  `urlJumpValue`  VARCHAR(200) DEFAULT NULL COMMENT 'URL跳转值',
  `jumpType` INT(11) DEFAULT NULL COMMENT '跳转类型（0:PC/APP站内跳转,1:外链跳转）',
  `valid` TINYINT(4) NOT NULL DEFAULT 1 COMMENT '删除标志（0:删除,1:未删除）',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='站内信发送记录表';

/**Message数据转移SQL**/
INSERT INTO mesg_news_record  (recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,updateTime,createTime,appJumpCode,appJumpValue,valid) 
SELECT recordId,pushTitle,pushContent,willSendTime,sendStatus,isRead,lastSendTime,createTime,null,jumpValue,valid FROM mesg_push_record; 


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

/**模板表数据JUMPCode 转为 映射码**/
insert into mesg_jump (subTempId,pageType,pageCode) 
SELECT ms.id,1,cd.`id` FROM mesg_subtemplet ms LEFT JOIN `comm_dictionary` cd ON ms.`jumpCode` = cd.`code` WHERE jumpCode IS NOT NULL AND cd.id IS NOT NULL
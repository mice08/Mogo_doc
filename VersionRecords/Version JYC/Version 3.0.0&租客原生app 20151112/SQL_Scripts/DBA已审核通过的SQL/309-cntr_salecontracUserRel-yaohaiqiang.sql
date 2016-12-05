use mogoroomdb;

CREATE TABLE `cntr_salecontractUserRel`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `contractId` INT(11) COMMENT '合同id',
  `userId` INT(11) COMMENT '用户id',
  `userType` TINYINT(4) COMMENT '用户类型(参考字典表组名:userType)',
  `userRel` TINYINT(4) COMMENT '与签约人关系(1：本人 2：员工 3：亲人 4：朋友)',
  PRIMARY KEY (`id`)
) ENGINE=INNODB CHARSET=utf8 COMMENT='合同用户关系表';

ALTER TABLE `cntr_salecontractuserrel`
ADD COLUMN `createTime`  DATETIME NULL COMMENT '创建时间';

ALTER TABLE `user_info`
ADD COLUMN `hobby`  VARCHAR(64) NULL COMMENT '兴趣爱好' ,
ADD COLUMN `picGroupId`  INT(11) NULL COMMENT '图片组id' ;


INSERT  INTO `comm_picture_group`(`picGroupType`,`picGroupName`,`createTime`,`createByType`,`createBy`,`remark`) 
VALUES (3,'用户图片','2016-01-15 14:24:49',1,0,NULL);
